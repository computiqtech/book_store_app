
import 'package:book_store_app/Cart/cart_page.dart';
import 'package:book_store_app/Home_Page/home_page.dart';
import 'package:book_store_app/PageAdd/page_add.dart';
import 'package:book_store_app/data/dataicon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Navigation extends StatelessWidget {
  const Navigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 430,
      left: 100,
      child: Container(
        padding: EdgeInsets.all(15),
        height: 72,
        width: 227,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(20),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:DataIcon.list_icon.map((e) => GestureDetector(
              onTap: (){
                if(e.icon==Icons.shopping_cart) {
                  Get.to(CatPage());
                };
                if(e.icon==Icons.add) {
                  Get.to(AddPage());
                };
                if(e.icon==Icons.home) {
                };
              },
              child: Icon(e.icon,color: Colors.black,))).toList(),
        ),
      ),
    );
  }
}