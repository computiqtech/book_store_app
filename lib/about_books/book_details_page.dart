import 'package:flutter/material.dart';

import '../app_bars/the_app_bar2.dart';
import '../model.dart';
import '../my_buttons/button2.dart';
import 'book_img.dart';
import 'details_of_books.dart';

class BookDetailsPage extends StatelessWidget {
  const BookDetailsPage({Key? key, required this.book}) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 245, 245, 245),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MyAppBar2(),
              BookImg(book: book),
              MyBookDetails(book: book),
              Stack(children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Button2(icon: Icons.menu_outlined, text: 'Preview',),
                        Button2(icon: Icons.comment_outlined, text: 'Reviews',),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        Book.cartBooks.add(book);
                      },
                      child: Container(
                        width: 335,
                        height: 60,
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black),
                        child: Text(
                          'Buy Now for ${book.price}',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ],),
            ],
          ),
        ),
      ),
    );
  }
}