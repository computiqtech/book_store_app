import 'package:book_store_app/model.dart';
import 'package:flutter/material.dart';
import 'my_books.dart';
import 'package:get/get.dart';
class MyBook extends StatelessWidget {
  const MyBook({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return Expanded(
          child: ListView(
              children: [Obx(() {
                  return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                      Books.book.where((e) => e.bookName.contains(Books.typed.value)).map((e) => MyBooks(book: e,)).toList()

                  );
                }
              ),]
          ),
        );
  }
}

