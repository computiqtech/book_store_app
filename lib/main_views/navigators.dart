import 'package:my_book_store_app/add_book_page/add_book_page.dart';
import 'package:my_book_store_app/cart_page/cart_page.dart';
import 'package:my_book_store_app/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Navigators extends StatelessWidget {
  Navigators({Key? key, this.currentPageCart, this.currentPageHome})
      : super(key: key);
  bool? currentPageHome;
  bool? currentPageCart;
  Rx<bool> currentPageHomeRx = false.obs;
  Rx<bool> currentPageCartRx = false.obs;
  @override
  Widget build(BuildContext context) {
    currentPageCartRx.value = currentPageCart ?? false;
    currentPageHomeRx.value = currentPageHome ?? false;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, bottom: 10),
            child: Container(
              width: 250,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  //border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: const Offset(0, 9))
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {
                      currentPageCartRx.value = currentPageCart ?? false;

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyHomePage()));
                    },
                    child: Obx(() {
                      return Icon(Icons.home,
                          color: currentPageHomeRx == false.obs
                              ? Colors.grey
                              : Colors.blue);
                    }),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const CartPage()));
                    },
                    child: Icon(Icons.shopping_cart_rounded,
                        color: currentPageCartRx == false.obs
                            ? Colors.grey
                            : Colors.blue),
                  ),
                  TextButton(
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddBookPage()));
                      },
                      child: Icon(
                        Icons.add,
                        color: Colors.grey[500],
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
