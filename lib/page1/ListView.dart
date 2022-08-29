import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../View_book/Name+Aother.dart';
import '../View_book/View_book_main_page.dart';
import '../favorite_page/favorite.dart';
import '../model.dart';

class books_card extends StatelessWidget {
  const books_card({
    Key? key,
    required this.books,
    required this.color,
  }) : super(key: key);
  final Books books;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Obx(() {
        return GestureDetector(
          onTap: () {
            books.isClickted.value = true;
            Get.to(Veiw_Books(
              note: books,
            ));
          },
          child: Container(
            height: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                        height: 120,
                        width: 80,
                        decoration: BoxDecoration(
                            // color: Colors.red,
                            image: DecorationImage(
                                image: NetworkImage(books.imageLink.value),
                                fit: BoxFit.cover),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)))),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            books.bookName.value,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            books.authorName.value,
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$ ${books.price.value}",
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                          const Align(
                              alignment: Alignment.bottomCenter, child: star())
                        ],
                      ),
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {
                      books.makeAsDone();
                    },
                    icon: Icon(Icons.favorite,
                        size: 30,
                        color: books.myFavorite == true
                            ? Colors.red
                            : Colors.grey)),
              ],
            ),
          ),
        );
      }),
    );
  }
}
