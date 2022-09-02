
import 'package:book_store_app/screens/add_book/add_book_screen.dart';

import 'package:book_store_app/screens/cart/cart_screen.dart';
import 'package:get/get.dart';
import 'package:book_store_app/screens/detais_book_screen.dart';
import 'package:book_store_app/screens/home/home_screens.dart';



import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
