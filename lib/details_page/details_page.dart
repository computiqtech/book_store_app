import 'package:book_store_app/details_page/view_book.dart';
import 'package:book_store_app/first_raw.dart';
import 'package:book_store_app/model.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({Key? key, required this.book}) : super(key: key);
final Books book;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
          backgroundColor: const Color(0xffE5E5E5),
    ),
        backgroundColor: const Color(0xffE5E5E5),
      body: Column(
        children: [
          const FirstRaw(),
          BookView(book: book,)
    ]
    )
    );
  }
}