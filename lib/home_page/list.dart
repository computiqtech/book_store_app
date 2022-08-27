
import 'package:book_store_app/card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../add_book/model.dart';


class CardsList extends StatelessWidget {
  const CardsList({
    Key? key,}) : super(key: key);
  static PageController controller = PageController();
  static RxInt currentPage = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return
      ListView(
        controller: ScrollController(),
        children: Book.books.map((e) =>
            MyCard(book: e,)).toList(),
      );
    }
    );
  }
}