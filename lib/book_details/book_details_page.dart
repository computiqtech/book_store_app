import 'package:book_store_app/book_details/MyButtons.dart';
import 'package:book_store_app/book_details/book_details.dart';
import 'package:book_store_app/book_details/book_image.dart';
import 'package:book_store_app/bookmodel.dart';
import 'package:flutter/material.dart';

import '../add_book_page/app_bar2.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({Key? key, required this.book}) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 245, 245, 245),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyAppBar2(),
              MyBookImage(book: book),
              MyBookDetails(book: book),
              Stack(children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        MyButton(icon: Icons.menu_outlined, text: 'Preview'),
                        MyButton(icon: Icons.comment_outlined, text: 'Reviews')
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        Book.cart_books.add(book);
                      },
                      child: Container(
                        width: 335,
                        height: 60,
                        margin: EdgeInsets.symmetric(vertical: 20),
                        padding: EdgeInsets.all(15),
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
                    )
                  ],
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}
