import 'package:book_store_app/home/home.dart';
import 'package:book_store_app/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../add_book/add_book.dart';

class CartBottomNavBar extends StatefulWidget {
  const CartBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<CartBottomNavBar> createState() => _CartBottomNavBarState();
}

class _CartBottomNavBarState extends State<CartBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.bottomCenter,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        margin: const EdgeInsets.only(bottom: 30),
        padding: EdgeInsets.all(20),
        width: 220,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: CartBottomNavBarData.myButtons
              .map((e) => TextButton(
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: () {
                if (e.name == "addBook") {
                  Get.to(AddBook());
                } else if (e.name == "home") {
                  Get.to(HomeScreen());
                }
                setState(() {});
              },
              child: BottomNavBar(data: e)))
              .toList(),
        ),
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key, required this.data}) : super(key: key);

  final CartBottomNavBarData data;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        data.icon,
        color: data.myColor,
      ),
    );
  }
}

class CartBottomNavBarData {
  final IconData icon;
  final String name;
  final Color myColor;

  CartBottomNavBarData({required this.icon, required this.name, required this.myColor});

  static List<CartBottomNavBarData> myButtons = [
    CartBottomNavBarData(icon: Icons.home_filled, name: "home", myColor: Colors.grey,),
    CartBottomNavBarData(icon: Icons.shopping_cart_outlined, name: "cart", myColor: Colors.black,),
    CartBottomNavBarData(icon: Icons.add, name: "addBook", myColor: Colors.grey,)
  ];
}