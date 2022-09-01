
import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  const InputField({Key? key, required this.numberOfLines, required this.hint, required this.controller,}) : super(key: key);

  final int numberOfLines;
  final String hint;
  final TextEditingController controller;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20, left: 20, bottom: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black38.withOpacity(0.05),
            blurRadius: 20,
            offset: const Offset(0, -10),
          ),
        ],
      ),
      child:  TextField(
        controller: widget.controller,
        maxLines: widget.numberOfLines,
        style: TextStyle(fontSize: 18,),
        decoration: InputDecoration(
          border: UnderlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(8)),
          hintText: '${widget.hint}',
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }
}

