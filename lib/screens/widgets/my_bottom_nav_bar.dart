import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../add_book/add_book_screen.dart';
import '../cart/cart_screen.dart';
import '../home/home_screens.dart';

class MybottomNavBar extends StatelessWidget {
 static RxInt selected=0.obs ;
   MybottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 32,
      left: 72,
      right: 72,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Colors.white,
        ),
        child:Obx(()=> Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  Get.to(HomeScreen());
                  selected.value=0;
                },
                icon: SvgPicture.asset(
                  "assets/icons/home_icon.svg",
                  color:selected==0?Colors.black: Colors.grey,
                )),
            IconButton(
              onPressed: () {
                Get.to((CartScreen()));
                selected.value=1;
              },
              icon: Icon(Icons.shopping_cart_outlined),
               color: selected==1?Colors.black: Colors.grey,
            ),
            IconButton(
              onPressed: () {
                Get.to(AddBook());
                 selected.value=2;
              },
              icon: Icon(Icons.add),
              color: selected==2?Colors.black: Colors.grey,
            )
          ],
        ),)
      ),
    );
  }
}
