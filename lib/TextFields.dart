import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  TextFields({Key? key,required this.hint, this.height, required this.controller}) : super(key: key);
  final String hint;
  double? height = 53;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: TextField(
        onChanged: (x) {
          controller.text = x;
        },
        decoration: InputDecoration(
          hintText: hint,
          contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
