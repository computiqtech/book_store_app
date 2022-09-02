
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyTextField extends StatelessWidget {

  final TextEditingController? myController;///
  final double? myWidth;
  final double? myHeight;
  final int lines;
  final String hint;
  final IconData? suffixIcon;
  const MyTextField({
    Key? key,required this.myWidth, required this.myHeight, required this.lines, required this.hint, required this.suffixIcon, required this.myController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: myWidth,
      height: myHeight,
      child: TextField(
        controller: myController,///
        style: const TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        maxLines: lines,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: InputBorder.none,
          hintText: hint,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),

          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(8)),

          ),
          suffix: Icon(suffixIcon, color: Colors.black45, size: 30,),
        ),
      ),
    );
  }
}