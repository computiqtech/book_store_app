import 'package:book_store_app/Main_page/mainpage.dart';
import 'package:flutter/material.dart';
import '../add_book_page/add_book_page.dart';
import '../cart_page/cart_page.dart';
import 'icon_button.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
        TextButton(
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => const MainPage()));
            },
            child: const MyIcons(icon: Icons.home)),
        TextButton(
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => const CartPage()));
            },
            child: const MyIcons(icon: Icons.shopping_cart_outlined)),
        TextButton(
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => const AddBook()));
            },
            child: const MyIcons(icon: Icons.add)),
      ]),
      onPressed: () {},
    );
  }
}











