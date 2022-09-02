import 'package:flutter/material.dart';

class MyTextField2 extends StatefulWidget {
  const MyTextField2({
    Key? key,
    required this.hint,
    required this.maxlines,
    required this.mycontroller,
  }) : super(key: key);

  final String hint;
  final int maxlines;
  final TextEditingController mycontroller;

  @override
  State<MyTextField2> createState() => _MyTextField2State();
}

class _MyTextField2State extends State<MyTextField2> {
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
        maxLines: widget.maxlines,
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
