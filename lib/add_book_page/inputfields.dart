
import 'package:flutter/material.dart';
import '../models/myColor.dart';

class InputField extends StatefulWidget {
  const InputField({
    Key? key, required this.myControl, required this.hint, required this.errorOn, required this.line,
  }) : super(key: key);
  final String hint;
  final TextEditingController myControl;
  final bool errorOn;
  final int line;
  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  String? error;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 22),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: MyColor.shadowTextFieldColor,
              spreadRadius: 7,
              blurRadius: 32,
              offset: const Offset(0, 7),
            )
          ]),
      child: TextField(
        textInputAction: TextInputAction.next,
        maxLines: widget.line,
        controller: widget.myControl,
        onChanged: (x){
          if(widget.errorOn) {
            if (x.isEmpty) {
              error = 'Required';
            }else{
              error=null;
            }
            setState(() {});
          }
        },
        decoration: InputDecoration(
          hintText: widget.hint,
          hintStyle: TextStyle(color: MyColor.hintTextFieldColor),
          filled: true,
          fillColor: Colors.white,
          disabledBorder: InputBorder.none,
          border: InputBorder.none,
          errorText: error,
        ),
      ),
    );
  }
}
