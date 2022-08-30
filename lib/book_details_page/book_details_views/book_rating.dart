
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
class StarDisplay extends StatelessWidget {
  final double value;
  const StarDisplay({Key? key, this.value = 0})
      : assert(value != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index < value.round() ? Icons.star : Icons.star_border,
          color: Colors.amber,
        );
      }),
    );
  }
}