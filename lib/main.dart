import 'package:book_store_app/page_add/add_page.dart';
import 'package:book_store_app/page_cart/cart_page.dart';
import 'package:book_store_app/page_main/navigation_buttons.dart';
import 'package:book_store_app/page_save/save_page.dart';
import 'package:get/get.dart';

import '../page_main/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static PageController controllerPage = PageController();
  static RxInt currentPage = 0.obs;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PageView(
          controller: controllerPage,
          onPageChanged: (x) {
            currentPage.value = x;
            print('x=${currentPage.value}');
          },
          children: [
            const MainPage(),
            const CartPage(),
            const SavePage(),
            AddPage(),
          ],
        ),
        extendBody: true,
        bottomNavigationBar: const NavigationButton(),
      ),
    );
  }
}
