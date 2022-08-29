
import 'package:book_store_app/models/book_model.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    Key? key,
    required this.rating,
  }) : super(key: key);
  final double rating;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        StarDisplay(
          value: rating,
        ),
        Text("  " + rating.toString() + "/5")
      ],
    );
  }
}
