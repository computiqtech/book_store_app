
import 'package:flutter/material.dart';

class MyBooks {
  final String imageLink;
  final String bookName;
  final String bookAuth;
  final String price;

  MyBooks({required this.imageLink, required this.bookName, required this.bookAuth, required this.price});

  static List<MyBooks> book = [
    MyBooks(imageLink: 'https://i.harperapps.com/hcanz/covers/9780008563790/x293.jpg', bookName: 'fire and blood', bookAuth: 'George RR Martin', price: r'20$'),
    MyBooks(imageLink: 'https://i.harperapps.com/hcanz/covers/9780008563790/x293.jpg', bookName: 'fire and blood', bookAuth: 'George RR Martin', price: r'20$'),
    MyBooks(imageLink: 'https://i.harperapps.com/hcanz/covers/9780008563790/x293.jpg', bookName: 'fire and blood', bookAuth: 'George RR Martin', price: r'20$'),
    MyBooks(imageLink: 'https://i.harperapps.com/hcanz/covers/9780008563790/x293.jpg', bookName: 'fire and blood', bookAuth: 'George RR Martin', price: r'20$'),
    MyBooks(imageLink: 'https://i.harperapps.com/hcanz/covers/9780008563790/x293.jpg', bookName: 'fire and blood', bookAuth: 'George RR Martin', price: r'20$'),
    MyBooks(imageLink: 'https://i.harperapps.com/hcanz/covers/9780008563790/x293.jpg', bookName: 'fire and blood', bookAuth: 'George RR Martin', price: r'20$'),
    MyBooks(imageLink: 'https://i.harperapps.com/hcanz/covers/9780008563790/x293.jpg', bookName: 'fire and blood', bookAuth: 'George RR Martin', price: r'20$'),
    MyBooks(imageLink: 'https://i.harperapps.com/hcanz/covers/9780008563790/x293.jpg', bookName: 'fire and blood', bookAuth: 'George RR Martin', price: r'20$'),
  ];

}

class Navigation {
  final IconData icon;

  Navigation({required this.icon});

  static List<Navigation> icons = [
    Navigation(icon: Icons.home_filled),
    Navigation(icon: Icons.shopping_cart),
    Navigation(icon: Icons.add),
  ];
}