import 'package:flutter/material.dart';

class ButtonBuilder extends StatelessWidget {
  final IconData icon;
  final String text;

  const ButtonBuilder({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(154, 40),
          primary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(icon, color: Colors.black),
            Text(text, style: TextStyle(color: Colors.black))
          ],
        ));
  }
}