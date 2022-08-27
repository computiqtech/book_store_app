import 'package:flutter/material.dart';

import '../../home_page/books_main/books_model.dart';
import 'book_buy_button.dart';
import 'book_preview_button.dart';
import 'book_reviews_button.dart';

class BookPageButton extends StatelessWidget {
  const BookPageButton({
    Key? key,
    required this.book,
  }) : super(key: key);

  final BookData book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              PreviewButton(),
              SizedBox(width: 13,),
              ReviewsButton()
            ],
          ),const SizedBox(height: 34,),
          BuyButton(book: book)
        ],
      ),
    );
  }
}