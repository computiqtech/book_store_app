
import 'package:book_store_app/saved/saved_body.dart';
import 'package:flutter/material.dart';
import 'package:book_store_app/home_page/menu_barr.dart';
import 'package:book_store_app/add_book/main_add.dart';
import 'package:book_store_app/cart/cart_body.dart';
class SavedBooks extends StatefulWidget {
  const SavedBooks({Key? key}) : super(key: key);
  @override
  State<SavedBooks> createState() => _SavedBooksState();
}

class _SavedBooksState extends State<SavedBooks> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: Colors.grey.shade100,
            primarySwatch: Colors.grey),
        home: Scaffold(
          appBar: MyAppBar(context),
          body: Stack(
            children: const [
              SavedBody(txtHeader: 'Saved Books'),
              MenuBar(c4: Colors.black, flag: 'saved',)
            ],
          ),
        )
    );
  }

}
