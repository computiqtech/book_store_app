import 'package:flutter/material.dart';

import '../add_book_page/add_book.dart';
import '../cart_page/cart_page.dart';
import '../my_icons/icon1.dart';
import '../page1/home_page.dart';

class Button1 extends StatelessWidget {
  const Button1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
            child: const Icon1(icon: Icons.home)),
        TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartPage(),
                ),
              );
            },
            child: const Icon1(icon: Icons.shopping_cart_outlined)),
        TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddBook(),
                ),
              );
            },
            child: const Icon1(icon: Icons.add)),
      ]),
      onPressed: () {},
    );
  }
}
