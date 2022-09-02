import 'package:flutter/material.dart';

import '../../home_page/books_main/books_model.dart';

class BookPageName extends StatelessWidget {
  const BookPageName({
    Key? key,
    required this.book,
  }) : super(key: key);

  final BookData book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22.0),
      child: Text(book.bookName,
        style: const TextStyle(fontWeight: FontWeight.bold,fontSize:24),),
    );
  }
}