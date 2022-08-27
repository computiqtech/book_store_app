import 'package:flutter/material.dart';

import '../../home_page/books_main/books_model.dart';

class BookPageDescription extends StatelessWidget {
  const BookPageDescription({
    Key? key,
    required this.book,
  }) : super(key: key);

  final BookData book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 19.0),
      child: Text(book.bookDescription,style: const TextStyle(fontSize:16,)),
    );
  }
}