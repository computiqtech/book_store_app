import 'package:book_store_app/PageThree/TextFieldMain/my_auther_name.dart';
import 'package:book_store_app/PageThree/TextFieldMain/my_book_name.dart';
import 'package:book_store_app/PageThree/TextFieldMain/my_description.dart';
import 'package:book_store_app/PageThree/TextFieldMain/my_image_link.dart';
import 'package:book_store_app/PageThree/TextFieldMain/my_price.dart';
import 'package:flutter/material.dart';

class MyTextFieldMain extends StatelessWidget {
  const MyTextFieldMain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50,vertical: 20),

      child: Column(
        children: const [
          BookName(),
          AutherName(),
          Price(),
          ImageLink(),
          Description(),
        ],
      ),
    );
  }
}









