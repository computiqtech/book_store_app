
import 'package:book_store_app/data/DataBook.dart';
import 'package:flutter/material.dart';

class ImageBook extends StatelessWidget {
  const ImageBook({
    Key? key,
    required this.data,
  }) : super(key: key);

  final DataBook data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(data.image),
      ],
    );
  }
}