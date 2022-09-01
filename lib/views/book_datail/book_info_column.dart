import 'package:flutter/material.dart';

import '../../models/book_model.dart';

class BookInfo extends StatelessWidget {
  const BookInfo({
    Key? key,
    required this.book,
  }) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 216,
          height: 320,
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(book.imgLink!),
              ),
              borderRadius: BorderRadius.circular(10)),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(book.name,
            style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        const SizedBox(
          height: 7,
        ),
        Text(book.author,
            style: const TextStyle(
                fontSize: 14,
                color: const Color.fromARGB(255, 101, 101, 101))),
      ],
    );
  }
}
