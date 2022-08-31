import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'model.dart';
import 'bookrow.dart';
class Booklist extends StatelessWidget {
  const Booklist({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return ListView(
        children:
        Book.books.map((e) => Bookview(book: e) ).toList(),
      );
    });
  }
}
