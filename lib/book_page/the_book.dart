
import 'package:flutter/material.dart';
import 'package:book_store_app/home_page/menu_barr.dart';
import 'package:book_store_app/add_book/main_add.dart';
class BookPage extends StatefulWidget {
  const BookPage({Key? key}) : super(key: key);
  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
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

              ),
              MenuBar(c2: Colors.black, flag: 'cart',)
            ],
          ),
        )
    );
  }

}