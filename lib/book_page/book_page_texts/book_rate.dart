import 'package:flutter/material.dart';
import '../../home_page/books_main/books_model.dart';
import '../../home_page/books_main/rating_widget.dart';

class BookPageRate extends StatelessWidget {
  const BookPageRate({
    Key? key,
    required this.book,
  }) : super(key: key);

  final BookData book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StarRating(rating: book.bookRate,),
          Text('  ${book.bookRate} / 5.0',
              style: const TextStyle(fontWeight: FontWeight.bold,fontSize:14)),
        ],
      ),
    );
  }
}