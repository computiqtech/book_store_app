import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/book_controller.dart';
import '../../style.dart';
import '../screens/add_page.dart';
import '../screens/cart_page.dart';
import '../screens/home_page.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BookController bookController = Get.find();

    const List<Map<String, dynamic>> icons = [
      {
        'page': HomePage(),
        'icon': CupertinoIcons.home,
        'namePage': 'home page',
      },
      {
        'page': CartPage(),
        'icon': CupertinoIcons.shopping_cart,
        'namePage': 'cart page',
      },
      {
        'page': AddPage(),
        'icon': CupertinoIcons.add,
        'namePage': 'add page',
      },
    ];

    return Container(
      margin: const EdgeInsets.only(left: 56, right: 66, bottom: 20),
      height: 72,
      width: 227,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: const [
          BoxShadow(
            color: shadowColor,
            offset: Offset(0, 8),
            blurRadius: 24,
            spreadRadius: 12,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          icons.length,
          (index) => IconButton(
            onPressed: () => Get.to(icons[index]['page'], preventDuplicates: true),
            icon: Icon(icons[index]['icon']),
            splashRadius: 24,
            color: bookController.iconcolorCurrentPage(icons[index]['namePage']),
          ),
        ),
      ),
    );
  }
}
