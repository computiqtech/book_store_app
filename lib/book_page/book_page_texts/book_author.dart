import 'package:flutter/cupertino.dart';

import '../../home_page/books_main/books_model.dart';

class BookPageAuthor extends StatelessWidget {
  const BookPageAuthor({
    Key? key,
    required this.book,
  }) : super(key: key);

  final BookData book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child:
      Text(book.bookAuthor,style: const TextStyle(fontSize:14)),
    );
  }
}