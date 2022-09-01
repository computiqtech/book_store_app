import 'package:flutter/material.dart';

Widget reusableTextField({required hintText, required int lines, required TextEditingController myControler}) {
  return Container(
    margin: const EdgeInsets.only(top: 17),
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
      maxLines: 6,
      minLines: lines,
      textInputAction: TextInputAction.newline,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          enabledBorder: const OutlineInputBorder(borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: Colors.blue),
              borderRadius: BorderRadius.circular(15))),
      autofocus: false,
      controller: myControler,
    ),
  );
}
