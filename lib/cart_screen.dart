import 'package:book_store_app/book_view_list.dart';
import 'package:book_store_app/floating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffdfdfd),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.of(context).pop(),
        ),
        iconTheme: const IconThemeData(
        ),
        actions: const [
          Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.more_vert,size: 30,))
        ],
        toolbarHeight: 110,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark
        ),
        backgroundColor: const Color(0xfffdfdfd),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Text('Cart',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                ),),
            ),
            BookViewList(allBooks: false,),
            FloatingBar(iconCondition: false,),
          ],
        ),
      ),
    );
  }
}
