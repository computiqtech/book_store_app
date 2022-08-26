import 'package:book_store_app/add_book_page/add_book_page.dart';
import 'package:book_store_app/bookmodel.dart';
import 'package:book_store_app/floatingbutton.dart';
import 'package:book_store_app/home_page/homepage.dart';
import 'package:book_store_app/mybook.dart';
import 'package:book_store_app/myicons.dart';
import 'package:flutter/material.dart';

import '../add_book_page/app_bar2.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 245, 245, 245),
        floatingActionButton: SizedBox(
          height: 60,
          width: 200,
          child: MyFloatingButton(),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyAppBar2(),
              const Padding(
                padding: EdgeInsets.only(left: 15, bottom: 20),
                child: Text(
                  'Cart',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                    children:
                        Book.cart_books.map((e) => MyBook(book: e)).toList()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
