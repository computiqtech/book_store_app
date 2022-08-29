import 'dart:math';

import 'package:book_store_app/PageTwo/information_book.dart';
import 'package:book_store_app/PageTwo/main_image.dart';
import 'package:book_store_app/PageTwo/my_stack.dart';
import 'package:book_store_app/PageTwo/my_text_button.dart';
import 'package:book_store_app/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PageTwo extends StatelessWidget {
   PageTwo({Key? key, required this.mybook, }) : super(key: key);
final Book mybook;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color.fromRGBO(235, 235, 235, 1),
          appBar: AppBar(
            systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
                statusBarIconBrightness: Brightness.dark),
            backgroundColor: const Color.fromRGBO(235, 235, 235, 1),
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios),
              color: Colors.black,
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                    color: Colors.black,
                  ))
            ],
          ),

          ///////////////////////////////
          ///////////////////////////////
          body: Column(
            children: [
              MyMainImage(image: mybook),
              InformationBook(information: mybook,),
              MyStack(description: mybook,),
              MyTextButton(price: mybook,)
            ],
          )),
    );
  }
}








