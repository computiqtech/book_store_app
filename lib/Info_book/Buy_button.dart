
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../bookmodel.dart';

class Buybutton extends StatelessWidget {
  const Buybutton({Key? key, required this.book}): super(key: key);
  final Book book;
  @override
  Widget build(BuildContext context) {
    return  TextButton(
      onPressed: () {
        Book.cart.add(book);
        Navigator.pop(context);
      },
      child: Container(
        width: 335,
        height: 60,
        margin: const EdgeInsets.symmetric(vertical: 20),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black),
        child: Text(
          'Buy Now for ${book.price}',
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
