
import 'package:flutter/material.dart';

class AddTextField extends StatelessWidget {
  const AddTextField({Key? key, required this.title, required this.controllerAdd}) : super(key: key);
  final String title;
  final TextEditingController controllerAdd;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: TextField(
        controller: controllerAdd,
        maxLines: 1,
        style: const TextStyle(fontSize: 16),
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white.withOpacity(0.2),
            hintText: title,
            border: InputBorder.none
        ),
      ),
    );
  }
}