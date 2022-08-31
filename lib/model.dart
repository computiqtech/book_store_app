import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Book{
  final String bookname;
  final String author;
  final String price;
  final String imagelink;
  final String description;
  final RxBool isDone = false.obs;
  Book({
    required this.bookname,
    required this.author,
    required this.price,
    required this.imagelink,
    required this.description
});
  static RxList books = <Book>[
    Book(bookname: 'ali',
      author: 'hses',
      price: '\$ 40',
      imagelink: 'https://i.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U',
      description: 'welcome to Iraq'
    )
  ].obs;
  static Add(name,author,price,link,desc){
    books.add(Book(bookname: name, author: author, price: price, imagelink: link, description: desc));
  }
  markAsDone(){
    isDone.value = true;
  }
}

