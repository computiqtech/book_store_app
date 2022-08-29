
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
    //required this.currentText,
  }) : super(key: key);

  //final RxString currentTexts;
  static RxString currentText = ''.obs;
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
          onChanged: (c) {
            currentText.value = c;
          },
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
              suffixIcon: TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                )),
                child: Obx( () {
                    return Icon(Icons.search,
                        color: currentText.value.isEmpty
                            ? Colors.grey
                            : Colors.blue);
                  }
                ),
                onPressed: () => print('object'),
              ),
              hintText: 'Search...',
              hintStyle: const TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                //borderSide: BorderSide.none,
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      width: 1, color: Colors.blue),
                  borderRadius: BorderRadius.circular(15))),
          autofocus: false,
        ),
      );
  }
}
