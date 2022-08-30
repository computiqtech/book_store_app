
import 'package:flutter/material.dart';

class BookCover extends StatelessWidget {
  const BookCover({
    Key? key,
    required this.url,
  }) : super(key: key);
  final String url;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 220,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(url),
            alignment: Alignment.topCenter,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(7)),
    );
  }
}