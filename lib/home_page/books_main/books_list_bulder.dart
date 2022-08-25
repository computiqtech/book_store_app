import 'package:flutter/material.dart';
import 'book_widgets.dart';
import 'books_model.dart';


class MyBooksCard extends StatelessWidget {
  const MyBooksCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: ListView(children: BookData.books.map((e) => MyBook(bookData: e)).toList(),));
  }
}