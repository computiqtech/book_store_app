


import 'package:book_store_app/model.dart';
import 'package:flutter/material.dart';

class MyMainImage extends StatelessWidget {
  const MyMainImage({
    Key? key, required this.image,
  }) : super(key: key);
final Book image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 211.69,
      height: 310,
      margin: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
      decoration:  BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                '${image.imageNetwork}',
              ),
              fit: BoxFit.fill),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10), bottomRight: Radius.circular(10))),
    );
  }
}