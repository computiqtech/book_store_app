import 'package:flutter/material.dart';

class BookTitle extends StatelessWidget {
  const BookTitle({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(title, style: const TextStyle( fontSize: 30, fontWeight: FontWeight.bold, height: 2));
  }
}
