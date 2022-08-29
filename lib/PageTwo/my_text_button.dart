

import 'package:book_store_app/PageOne/page_one_main.dart';
import 'package:book_store_app/PageTwo/page_two_main.dart';
import 'package:book_store_app/main.dart';
import 'package:book_store_app/model.dart';
import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({
    Key? key, required this.price,
  }) : super(key: key);
final Book price;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          price.makeAsDone();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PageOne()),
          );
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 40),
          padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            'Buy Now For \$${price.price}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ));
  }
}