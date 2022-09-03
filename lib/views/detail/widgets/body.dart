import 'package:flutter/material.dart';

import '../../../data/models/book.dart';
import 'book_content.dart';
import 'footer.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.book}) : super(key: key);
  final Book book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, right: 16, left: 16),
      child: Stack(
        children: [
          BookContent(book: book),
          Footer(book: book),
        ],
      ),
    );
  }
}
