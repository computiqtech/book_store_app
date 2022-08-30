import 'package:book_store_app/add_book_page/addBookPage.dart';
import 'package:book_store_app/card_page/cardPage.dart';
import 'package:book_store_app/main_page/mainPage.dart';
import 'package:book_store_app/models/myColor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/myUiComponent.dart';

class MainActionButton extends StatelessWidget {
  const MainActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin:const EdgeInsets.only(bottom:42 ),
        width: 227,
        height: 72,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(22),
            boxShadow: const[
              BoxShadow(
                color: Color.fromARGB(50, 7, 8, 14),
                spreadRadius: 7,
                blurRadius: 32,
                offset: Offset(0, 7),
              )
            ]),
        child: Obx(() {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed:(){
                  currentPage.value=0;
                  Get.to(const MainPage());
                },
                  icon:Icon(Icons.home_outlined,
                  size: 24,
                  color: currentPage.value==0?  MyColor.primaryColor : MyColor.unSelectColor ,
                )),
                IconButton(onPressed:(){
                  currentPage.value=1;
                  Get.to(const CardPage());
                },
                    icon:Icon(Icons.shopping_cart_outlined,
                      size: 20,
                      color: currentPage.value==1?  MyColor.primaryColor : MyColor.unSelectColor ,
                    )),
                IconButton(onPressed:(){
                  Get.to(const AddBookPage());
                },
                    icon:Icon(Icons.add,
                      size: 26,
                      color: MyColor.unSelectColor,
                    )),

              ],
            );
          }
        ),
      ),
    );
  }
}
