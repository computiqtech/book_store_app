
import 'package:book_store_app/card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../add_book/model.dart';


class SavedList extends StatelessWidget {
  const SavedList({
    Key? key,}) : super(key: key);
  static PageController controller = PageController();
  static RxInt currentPage = 0.obs;


  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return
          ListView(
            controller: ScrollController(),
            children: Book.books.where((e) => e.isFav.value).map((e) =>
                MyCard(book: e,)).toList(),
          );
    }
    );
  }
}