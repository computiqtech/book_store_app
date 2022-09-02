import 'package:flutter/material.dart';

import '../../home_page/books_main/books_model.dart';

class BookPageImage extends StatelessWidget {
  const BookPageImage({
    Key? key,
    required this.book,
  }) : super(key: key);

  final BookData book;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 216,height: 320,
        child: ClipRRect(borderRadius: BorderRadius.circular(8),
            child: Image.network(book.bookImage,fit: BoxFit.fill,)));
  }
}