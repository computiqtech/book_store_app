import 'package:book_store_app/bookmodel.dart';
import 'package:book_store_app/Main_page/button.dart';
import 'package:book_store_app/Main_page/shape_list_book.dart';
import 'package:flutter/material.dart';
import '../add_book_page/app_bar_addpage.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const AppBaradd(),
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
                    children:Book.cart.map((e) => Shape(book: e)).toList()),
              ),
            ],
          ),
        ),
        floatingActionButton: const SizedBox(
          height: 60,
          width: 200,
          child:  Button(),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
