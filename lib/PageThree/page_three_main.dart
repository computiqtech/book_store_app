
import 'package:book_store_app/PageOne/page_one_main.dart';
import 'package:book_store_app/PageThree/TextFieldMain/my_text_filed_main.dart';
import 'package:book_store_app/PageThree/add_book_title.dart';
import 'package:book_store_app/PageThree/my_text_button.dart';
import 'package:book_store_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

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
            leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios),
              color: Colors.black,
            ),
            actions: [
              IconButton(onPressed: (){}, icon: const Icon(
                Icons.more_vert,
                color: Colors.black,
              ))
            ],
          ),
          ///////////////////////////
          ///////////////////////////
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const[
                AddBookTitle(),
                MyTextFieldMain(),
                MyTextButtonAdd(),
              ],
            ),
          )
      ),
    );







  }
}






