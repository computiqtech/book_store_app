import 'package:book_store_app/home_page/books_main/books_list_bulder.dart';
import 'package:book_store_app/main.dart';
import 'package:flutter/material.dart';
import '../../add_page/add_page_main.dart';
import '../../cart_page/cart_main.dart';

class TabData{
  final IconData icon;
  final Widget page;
  TabData({required this.page, required this.icon});

  static List<TabData> buttons = [
    TabData(icon: Icons.home_outlined, page: MyApp()),
    TabData(icon: Icons.shopping_cart_outlined, page: MyCartCard()),
    TabData(icon: Icons.add, page: AddPage()),
  ];
}