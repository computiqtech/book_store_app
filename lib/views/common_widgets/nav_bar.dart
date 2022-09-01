import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../adding_page/adding_page.dart';
import '../cart_page/cart_page.dart';
import '../main_page/home_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: 227,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 4,
          blurRadius: 32,
        )
      ], color: Colors.white, borderRadius: BorderRadius.circular(22)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 18,
            width: 18,
            child: FloatingActionButton(
              heroTag: 'Home-button',
              backgroundColor: Colors.transparent,
              elevation: 0,
              child: 
              Image(image: AssetImage('images/home.png')),
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              onPressed: () {
                Get.to(() => const HomePage());
              },
            ),
          ),
          SizedBox(width: 30),
          FloatingActionButton(
            heroTag: 'shop-button',
            backgroundColor: Colors.transparent,
            elevation: 0,
            child: Icon(Icons.shopping_cart_outlined, color: Colors.black),
            onPressed: () {
              Get.to(() => AddedToCardBook());
            },
          ),
          FloatingActionButton(
            heroTag: 'add-button',
            backgroundColor: Colors.transparent,
            elevation: 0,
            child: Icon(Icons.add, color: Colors.black),
            onPressed: () {
              Get.to(() => BookBuilder());
            },
          ),
        ],
      ),
    );
  }
}
