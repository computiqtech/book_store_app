import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class data_book {
  final String image;
  final String title;
  final String decration;
  final String price;
  final IconData icon;
  final RxBool isDone = false.obs;
  data_book(
    this.image,
    this.title,
    this.decration,
    this.price,
    this.icon,
  );

  static RxList<data_book> datas = <data_book>[
    data_book(
        'https://dl.airtable.com/.attachments/b82bca4b5496e87ae2037da38a507265/1afe35bf/cover.jpg?ts=1661017804&userId=usrCBA8uInu6jO3n2&cs=ea7f6e9447680e9e',
        'Yves Saint Laurent',
        'hfjdj  ',
        '\$99.99',
        Icons.star),
    data_book('https://images.randomhouse.com/cover/9780440000624',
        'Yves Saint Laurent', 'SMenkesuzy  ', '\$99.99', Icons.star),
    data_book('https://images.randomhouse.com/cover/9780756416058',
        'Yves Saint Laurent', 'SMenkesuzy  ', '\$99.99', Icons.star),
    data_book('https://images.randomhouse.com/cover/9781984805638',
        'Yves Saint Laurent', 'SMenkesuzy  ', '\$99.99', Icons.star)
  ].obs;
  markAsDone(){
    isDone.value = true;
  }

}

 
class add_book {
  final String title;
  final String Author_Name;
  final String Price;
  final String image;
  final String dec;
  add_book(
      {required this.title,
      // ignore: non_constant_identifier_names
      required this.Author_Name,
      required this.Price,
      required this.image,
      required this.dec});

  static RxList<add_book> notes = <add_book>[].obs;
  static  RxString queue = ''.obs;
}

class Field {
  static TextEditingController myController1 = TextEditingController();
  static TextEditingController myController2 = TextEditingController();
  static TextEditingController myController3 = TextEditingController();
  static TextEditingController myController4 = TextEditingController();
  static TextEditingController myController5 = TextEditingController();

  static void new_books(){
    add_book.notes.add(add_book(
                    title: Field.myController1.text,
                    Author_Name: Field.myController2.text,
                    Price: Field.myController3.text,
                    image: Field.myController4.text,
                    dec: Field.myController5.text));
                Field.myController1.clear();
                Field.myController2.clear();
                Field.myController3.clear();
                Field.myController5.clear();
                Field.myController4.clear();
  }
}
