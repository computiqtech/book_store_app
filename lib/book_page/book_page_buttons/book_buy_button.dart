import 'package:flutter/material.dart';

import '../../home_page/books_main/books_model.dart';

class BuyButton extends StatelessWidget {
  const BuyButton({
    Key? key,
    required this.book,
  }) : super(key: key);

  final BookData book;

  @override
  Widget build(BuildContext context) {
    return Container(width: 319,height: 60,decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),color: Colors.black
    ),child: Center(
      child: Text('Buy Now for ${book.bookPrice}',
        style: const TextStyle(color: Colors.white,
            fontWeight:FontWeight.bold,
            fontSize: 16),),
    ),);
  }
}