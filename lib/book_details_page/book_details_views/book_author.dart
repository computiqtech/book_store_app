import 'package:flutter/material.dart';

class BookAuthor extends StatelessWidget {
  const BookAuthor({Key? key, required this.author}) : super(key: key);
  final String author;
  @override
  Widget build(BuildContext context) {
    return Text(author,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          height: 1,
          color: Colors.grey,
        ));
  }
}
