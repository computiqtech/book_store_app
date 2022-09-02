import 'package:flutter/material.dart';

import '../model.dart';

class BookImg extends StatelessWidget {
  const BookImg({
    Key? key,
    required this.book,
  }) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        width: 250,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(book.imageUrl.toString()),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
