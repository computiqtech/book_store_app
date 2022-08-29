import 'package:flutter/material.dart';
import 'main_page1.dart';

class MyInputField extends StatelessWidget {
  const MyInputField({
    Key? key,
    required this.MyController,
    required this.text,
    required this.width,
    required this.height,
    required this.ICON,
    required this.type, this.inputtype,
  }) : super(key: key);

  final TextEditingController MyController;
  final String text;
  final double width;
  final double height;
  final Widget? ICON;
  final TextInputType type;
  final TextInputAction? inputtype;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        width: width,
        height: height,
        child: TextField(
          controller: MyController,
          onChanged: (x) {},

          style: const TextStyle(fontSize: 20),
          maxLines: 1,
          minLines: 1,
          keyboardType: type,
          textInputAction: inputtype,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: '$text',
            suffixIcon: ICON,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none,
            ),




          ),
        ),
      ),
    );
  }
}
