import 'package:flutter/material.dart';

import '../../../style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.isDescription = false,
    this.isTextInput = true,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final bool? isDescription, isTextInput;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: 17, top: 18, bottom: isDescription! ? 88 : 4),
      margin: const EdgeInsets.only(left: 9, right: 45, bottom: 22),
      height: isDescription! ? 139 : 53,
      width: double.infinity,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: shadowColor,
            offset: Offset(0, 8),
            blurRadius: 24,
            spreadRadius: 12,
          ),
        ],
      ),
      child: TextField(
        keyboardType: isTextInput! ? TextInputType.text : TextInputType.number,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: hintTextStyle,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
