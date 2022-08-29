
import 'package:book_store_app/PageOne/card_one.dart';
import 'package:book_store_app/PageOne/my_end_card.dart';
import 'package:book_store_app/PageOne/my_list_view.dart';
import 'package:book_store_app/PageOne/my_stack.dart';
import 'package:book_store_app/PageOne/text_field.dart';
import 'package:book_store_app/PageOne/title_of_book.dart';
import 'package:book_store_app/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PageOne extends StatelessWidget {
  const PageOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color.fromRGBO(235, 235, 235, 1),
          appBar: AppBar(
            systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
                statusBarIconBrightness: Brightness.dark
            ),
            backgroundColor: const Color.fromRGBO(235, 235, 235, 1),
            elevation: 0,
          ),
          ////////////////////////////////
          ////////////////////////////////
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:const [
                CardOne(),
                SearchTextField(),
                Title0fBook(name: '',),
                MyStack(),
              ],
            ),
          ),

      ),
    );
  }
}











