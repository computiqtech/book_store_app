import 'dart:io';
import 'package:get/get.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Book{
  final Rx<String> name;
  final Rx<String> auther;
  final Rx<String> price;
  final Rx<String> image_link;
  final  Rx<String> desc;
  final RxBool isFav;
  final RxBool buy;

  Book(String name,String auther,String price,String image_link,String desc,[bool? buy ,bool? isFave])
  : isFav = (isFave??false).obs,
    buy = (buy??false).obs,
    name = name.obs,
    auther = auther.obs,
    price = price.obs,
    image_link = image_link.obs,
    desc = desc.obs;


  makeAsFav(){
    if(isFav == false)
    isFav.value = true;
    else
      isFav.value = false;
  }

  bought(){
    if(buy == false)
      buy.value = true;
    else
      buy.value = false;
  }

  static RxString typed = ''.obs;
  static RxList<Book> books = <Book>[Book('Yves Saint Laurent', 'Suzy Menkes ', '46.99', 'https://th.bing.com/th/id/OIP.eev4bzhaHoH_qMz57eNoswHaK1?w=116&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7', 'A spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.'),
                                     Book('The Book of Signs', 'Rudolf Koch ', '99.99', 'https://th.bing.com/th/id/OIP.8memnX72KG-Ffmmk9KV3CQHaLN?w=134&h=201&c=7&r=0&o=5&dpr=1.25&pid=1.7', 'A spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.'),
                                     Book('Yves Saint Laurent', 'Suzy Menkes ', '46.99', 'https://th.bing.com/th/id/OIP.eev4bzhaHoH_qMz57eNoswHaK1?w=116&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7', 'A spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.'),
                                     Book('The Book of Signs', 'Rudolf Koch ', '99.99', 'https://th.bing.com/th/id/OIP.8memnX72KG-Ffmmk9KV3CQHaLN?w=134&h=201&c=7&r=0&o=5&dpr=1.25&pid=1.7', 'A spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.')].obs;

  static add(String name,String auther,String price,String image_link,String desc){
    Book data= Book(name,auther,price,image_link,desc);
    books.add(data);
  }

}
