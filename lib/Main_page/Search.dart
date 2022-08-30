import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Search extends StatelessWidget {
  const Search({
    Key? key,
    required this.SearchController,
    required this.typed,
  }) : super(key: key);

  final TextEditingController SearchController;
  final RxString typed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: TextField(
        controller: SearchController,
        onChanged: (x) {
          typed.value = x;
        },
        style: const TextStyle(fontSize: 20),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Search .....',
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          suffixIcon: TextButton(
            child: Obx(() {
              return Icon(
                Icons.search_rounded,
                color: typed.isEmpty ? Colors.grey : Colors.blue,
                size: 30,
              );
            }),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
