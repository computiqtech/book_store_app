import 'package:book_store_app/Card/Card_main_page.dart';
import 'package:book_store_app/favorite_page/favorite.dart';
import 'package:book_store_app/page1/main_page1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../page2_Add_books/Add_books_main_page.dart';

class Stack_part extends StatelessWidget {
  const Stack_part({
    Key? key,  required this.color_home, required this.color_shopping, required this.color_favorite,
  }) : super(key: key);

  final Color color_home;
  final Color color_shopping;
  final Color color_favorite;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 42),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 72,
          width: 250,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(22),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    Get.to(
                        duration: Duration(milliseconds: 200), //duration of transitions, default 1 sec
                        transition: Transition.fadeIn,
                        Main_page1(),
                    );

                  },
                  icon: Icon(
                    Icons.home_filled,
                    size: 30,
                    color: color_home,
                  )),
              IconButton(
                  onPressed: () {
                    Get.to(Card1(),
                        duration: Duration(milliseconds: 200), //duration of transitions, default 1 sec
                        transition: Transition.fadeIn);

                  },
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    size: 30,
                    color: color_shopping
                  )),
              IconButton(
                  onPressed: () {
                    Get.to(const Add_books(),
                        duration: Duration(milliseconds: 200), //duration of transitions, default 1 sec
                        transition: Transition.fadeIn);
                  },
                  icon: const Icon(
                    Icons.add,
                    size: 32,
                    color: Colors.black26,
                  )),


              IconButton(
                  onPressed: () {
                    Get.to(const Favorite(),
                        duration: Duration(milliseconds: 200), //duration of transitions, default 1 sec
                        transition: Transition.fadeIn);
                  },
                  icon:  Icon(
                    Icons.favorite,
                    size: 30,
                    color: color_favorite
                  )),

            ],
          ),
        ),
      ),
    );
  }
}
