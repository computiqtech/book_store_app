import 'package:book_store_app/bookmodel.dart';
import 'package:flutter/material.dart';

class MyBookImage extends StatelessWidget {
  const MyBookImage({
    Key? key,
    required this.book,
  }) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        width: 250,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(book.image_url.toString()),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
