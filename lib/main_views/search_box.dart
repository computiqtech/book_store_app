import 'package:my_book_store_app/main_views/listed_books.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
  }) : super(key: key);
  static RxString searchWord = ''.obs;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 6,
                offset: const Offset(0, 6))
          ]),
      child: TextField(
        onTap: () {
          ListedBooks.myScrollController.jumpTo(0);
        },
        onChanged: (c) {
          searchWord.value = c;
        },
        textAlignVertical: TextAlignVertical.bottom,
        decoration: InputDecoration(
            suffixIcon: 
              TextButton(style: TextButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                child: Obx(() {
                  return Icon(Icons.search, color: searchWord.value.isEmpty? Colors.grey: Colors.blue);
                }),
                onPressed: () => print('object')),
            hintText: 'Search...',
            hintStyle: const TextStyle(color: Colors.grey),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            enabledBorder: const OutlineInputBorder(borderSide: BorderSide.none),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.blue),
                borderRadius: BorderRadius.circular(15))),
        autofocus: false,
      ),
    );
  }
}
