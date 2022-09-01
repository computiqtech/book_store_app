import 'package:book_store_app/page1/ListView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model.dart';
import '../page1/Stack_part.dart';
import '../page1/Title_OF_list.dart';
import '../page1/main_page1.dart';
import '../page2_Add_books/App_bar.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  late final Books books;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFEFEF),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 55),
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.to(Main_page1(),
                            duration: Duration(
                                milliseconds:
                                    200), //duration of transitions, default 1 sec
                            transition: Transition.fadeIn);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 30,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_vert,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                Title_OF_list(
                  title: "Favorite Books",
                ),
                Obx(() {
                  return Expanded(
                      child: ListView(
                    children: Books.bookList
                        .where((e) => e.myFavorite.value)
                        .map((e) => books_card(books: e, color: Colors.red))
                        .toList(),
                  ));
                })
              ],
            ),
            Stack_part(
              color_home: Colors.black26,
              color_shopping: Colors.black26,
              color_favorite: Colors.black87,
            )
          ],
        ),
      ),
    );
  }
}
