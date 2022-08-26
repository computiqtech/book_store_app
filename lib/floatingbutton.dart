import 'package:book_store_app/home_page/homepage.dart';
import 'package:book_store_app/myicons.dart';
import 'package:flutter/material.dart';

import 'add_book_page/add_book_page.dart';
import 'cart_page/cart_page.dart';

class MyFloatingButton extends StatelessWidget {
  const MyFloatingButton({
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            child: MyIcons(icon: Icons.home)),
        TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CartPage()));
            },
            child: MyIcons(icon: Icons.shopping_cart_outlined)),
        TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AddBook()));
            },
            child: MyIcons(icon: Icons.add)),
      ]),
      onPressed: () {},
    );
  }
}
