import 'package:flutter/material.dart';
import 'package:book_store_app/Book_display.dart';

import 'model.dart';
class BuyBook extends StatelessWidget {
  const BuyBook({Key? key, required this.book}) : super(key: key);
final Book book;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: const Icon(Icons.arrow_back_ios_new,color: Colors.black)),
        ),
        actions: const [Padding(
          padding: EdgeInsets.all(10),
          child: Icon(Icons.more_vert,color: Colors.black),
        )],
      ),
      body: Center(
        child: BookDisp(book: book)
      ),
    );
  }
}
