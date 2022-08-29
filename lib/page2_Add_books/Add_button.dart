import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../model.dart';
import '../page1/main_page1.dart';
import 'Add_books_main_page.dart';

class Add_button extends StatelessWidget {
  const Add_button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
          width: 285,
          height: 60,
          child: ElevatedButton(
            child: Text("Add".toUpperCase(),
                style: TextStyle(fontSize: 18)),
            style: ButtonStyle(
              foregroundColor:
              MaterialStateProperty.all<Color>(Colors.white),
              backgroundColor:
              MaterialStateProperty.all<Color>(Color(0xFF06070D)),
              shape:
              MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      side:
                      BorderSide(color: Color(0xFF06070D)))),
            ),
            onPressed: () async {
              if (book_name.text.obs.isEmpty ||
                  auther_name.text.obs.isEmpty ||
                  price.text.obs.isEmpty ||
                  link.text.obs.isEmpty ||
                  Description.text.obs.isEmpty) {
                Get.snackbar(
                  'Error',
                  'One or more of Text field is Empty',
                  colorText: Colors.white,
                  animationDuration: Duration(milliseconds: 500),
                  barBlur: 100,
                  backgroundColor: Colors.black,
                  duration: Duration(seconds: 2),
                  padding: EdgeInsets.only(
                      left: 20, top: 20, bottom: 20, right: 50),
                  icon: const Icon(
                    Iconsax.warning_24,
                    color: Colors.amber,
                    size: 30,
                  ),
                );
              } else {
                Books.bookList.add(
                  Books(
                      book_name.text.obs,
                      auther_name.text.obs,
                      price.text.obs,
                      link.text.obs,
                      Description.text.obs,
                      isBuy: false.obs,
                      isClickted: false.obs,
                      myFavorite: false.obs),
                );
                Get.snackbar(
                  'successful',
                  'The book has been added',
                  colorText: Colors.green,
                  animationDuration: Duration(milliseconds: 500),
                  barBlur: 100,
                  backgroundColor: Colors.white,
                  duration: Duration(seconds: 2),
                  padding: EdgeInsets.only(
                      left: 20, top: 20, bottom: 20, right: 50),
                  icon: const Icon(
                    Iconsax.chart_success4,
                    color: Colors.green,
                    size: 30,
                  ),
                );

                await Future.delayed(Duration(seconds: 2));

                Get.to(Main_page1());

                Description.text = "";
                link.text = "";
                price.text = "";
                auther_name.text = "";
                book_name.text = "";
              }
            },
          )),
    );
  }
}
