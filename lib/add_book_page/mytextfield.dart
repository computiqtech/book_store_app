import 'package:flutter/material.dart';


class MyTextField extends StatefulWidget {
  const MyTextField({
    Key? key,
    required this.hint,
    required this.mycontroller,
  }) : super(key: key);

  final String hint;
  final TextEditingController mycontroller;

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: TextField(
        controller: widget.mycontroller,
        onSubmitted: (x) {
          widget.mycontroller.text = x;
          setState(() {});
        },
        style: const TextStyle(fontSize: 20),

        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: widget.hint,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
