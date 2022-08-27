
import 'package:flutter/material.dart';
import 'package:book_store_app/home_page/menu_barr.dart';
import 'package:book_store_app/add_book/main_add.dart';
import 'package:book_store_app/home_page/card_book.dart';
import '../home_page/main.dart';
class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: Colors.grey.shade100,
            primarySwatch: Colors.grey),
        home: Scaffold(
          appBar: MyAppBar(context),
          body: Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    SizedBox(height: 28,),
                    const Text('Cart', style: TextStyle(
                        fontSize: 24, fontWeight: FontWeight.w600
                    ),),
                    const SizedBox(height: 36,),
                    CardBook(title: 'C programming',author: 'Noah Emad',price: '20.0',imgPath: 'images/book1.png',),
                  ],
                ),
              ),
              MenuBar(c2: Colors.black, flag: 'cart',)
            ],
          ),
        )
    );
  }

}