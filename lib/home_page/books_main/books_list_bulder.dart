import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../navigation_bar/navigation_bar_main.dart';
import 'book_widgets.dart';
import 'books_model.dart';


class MyBooksCard extends StatelessWidget {
  const MyBooksCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Obx(()
      {return ListView(children: BookData.books
          .map((e) => MyBook(bookData: e)).toList(),);}),
    ));
  }
}


