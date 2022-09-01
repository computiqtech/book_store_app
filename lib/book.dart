

import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Book{
  final String bookName ;
  final String authorName;
  final String price;
  final ImageProvider bookImage;
  final String description;
  bool isBought = false;
  int rate = random.nextInt(5) + 3;



  Book({required this.bookName, required this.authorName, required this.price,required this.bookImage, required this.description});



  static Random random = Random();
  static RxList<Book> library = <Book>[].obs;
  static RxString search = "".obs;


  static add({required bookName, required authorName, required price,required bookImage, required description}){
    bookImage = NetworkImage(bookImage);
    library.add(Book(bookName: bookName, authorName: authorName, price: price, bookImage: bookImage, description: description));
  }


   static List<Book> returnLibrary (bool allBooks){
    if(allBooks == false){
      return library.where((p) => p.isBought == true).toList();
    }
    else{
      return library.where((e) => e.bookName.contains(Book.search)).toList();
    }

  }

}


/*
* Book(
        bookName: "bookName",
        authorName: "authorName",
        price: "99.99",
        bookImage: NetworkImage("https://d1csarkz8obe9u.cloudfront.net/posterpreviews/yellow-business-leadership-book-cover-design-template-dce2f5568638ad4643ccb9e725e5d6ff.jpg?ts=1637017516"),
        description: "fffffffffffffffff"
    )
* */