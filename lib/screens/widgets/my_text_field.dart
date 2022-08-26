import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  String hint;
  var icon;
  int maxLine;
  TextEditingController controller;
  MyTextField({
    required this.controller,
    required this.maxLine,
    this.icon,
    required this.hint,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        maxLines: maxLine,
        textAlign: TextAlign.left,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          suffixIcon: icon != null
              ? Icon(
                  icon,
                  color: Colors.grey,
                )
              : Text(""),
          hintText: hint,
          hintStyle: TextStyle(
            fontSize: 16,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          filled: true,
          contentPadding: EdgeInsets.all(16),
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
