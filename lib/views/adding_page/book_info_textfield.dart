import 'package:flutter/material.dart';

class BookInfoTextField extends StatelessWidget {
  const BookInfoTextField({
    Key? key,
    required this.controller,
    required this.text,
  }) : super(key: key);

  final String text;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(color: Color(0xff84889E)),
          filled: true,
          fillColor: Color.fromARGB(235, 252, 252, 252),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
