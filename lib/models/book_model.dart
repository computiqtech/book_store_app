import 'package:flutter/material.dart';
class BookModel {
   BookModel({
    Key? key,
    required this.imageUrl,
    required this.rating,
    required this.title,
    required this.author,
    required this.price,
    required this.description,
    required this.inCart,
  });
  final String imageUrl;
  final double rating;
  final String title;
  final String author;
  final String price;
  final String description;
  bool inCart;
  static List<BookModel> book = [
     BookModel(
      imageUrl:
          'https://i.pinimg.com/564x/00/95/e0/0095e010d9d7e80fbe0d63f0459f5425.jpg',
      rating: 4,
      title: 'Yves Saint Laurent',
      author: 'Suzy Monkes',
      description: 'idkjndlkdjfnv;kjn',
      price: '5',
      inCart: false
    ),
     BookModel(
      imageUrl:
          'https://i.pinimg.com/564x/00/95/e0/0095e010d9d7e80fbe0d63f0459f5425.jpg',
      rating: 5,
      title: 'Yves Saint Laurent2',
      author: 'Suzy Monkes2',
      description: '2',
      price: '12',
      inCart: false
    ),
  ];
}
