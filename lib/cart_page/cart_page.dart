import 'package:book_store_app/add_book_page/add_book_page_views/Add_book_button.dart';
import 'package:book_store_app/add_book_page/add_book_page_views/reusable_text_button.dart';
import 'package:book_store_app/book_details_page/book_details_views/top_bar.dart';
import 'package:book_store_app/main.dart';
import 'package:book_store_app/main_views/listed_books.dart';
import 'package:book_store_app/main_views/navigators.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  const CartPage({
    Key? key,
  }) : super(key: key);
  static TextEditingController bookName = TextEditingController();
  static TextEditingController authorName = TextEditingController();
  static TextEditingController price = TextEditingController();
  static TextEditingController imageLink = TextEditingController();
  static TextEditingController rating = TextEditingController();
  static TextEditingController description = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopBar(),
              Padding(
                  padding: const EdgeInsets.only(left: 27),
                  child: title('Cart')),
              const ListedBooks(paddingLeft: 20, paddingRight: 20, toggleCartFilter: true,)
            ],
          ),
          floatingActionButton:  Navigators(currentPageCart: true,),
          ),
    );
  }
}