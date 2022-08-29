import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model.dart';
import '../page1/main_page1.dart';

class App_bar extends StatelessWidget {
  const App_bar({
    Key? key,
    required this.books,
  }) : super(key: key);
  final Books books;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Container(
        height: 50,
        color: Color(0xFFEFEFEF),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Get.to(Main_page1(),
                    duration: Duration(
                        milliseconds:
                            200), //duration of transitions, default 1 sec
                    transition: Transition.fadeIn);
                books.isClickted.value = false;
              },
              icon: Icon(
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
      );
    });
  }
}
