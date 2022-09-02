import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/book_controller.dart';

class BookRating extends StatelessWidget {
  const BookRating({Key? key, required this.rating}) : super(key: key);

  final double rating;
  @override
  Widget build(BuildContext context) {
    final BookController bookController = Get.find();
    return Row(children: bookController.getBookRating(rating));
  }
}
