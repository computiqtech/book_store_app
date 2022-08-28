import 'package:book_store_app/main_page/my_books.dart';
import 'package:book_store_app/my_floating_buttons.dart';
import 'package:flutter/material.dart';

import '../first_raw.dart';
import '../model.dart';

class CartsPage extends StatelessWidget {
  const CartsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        backgroundColor: const Color(0xffE5E5E5),
      ),
      backgroundColor: const Color(0xffE5E5E5),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const FirstRaw(),
          const Padding(
            padding: EdgeInsets.only(left: 25.0,top: 18.0),
            child: Text('Cart',style: TextStyle(
              color: Colors.black,
              fontFamily:'Poppins',
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),),
          ),
          Expanded(
            child: ListView(
              children:
                Books.book.where((a) => a.isSelect.value).map((e) => MyBooks(book: e)).toList()
            ),
          )
        ],
      ),
      floatingActionButton: const MyFloatingActionButtons(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
