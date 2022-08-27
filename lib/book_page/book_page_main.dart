import 'package:flutter/material.dart';

import '../home_page/books_main/books_model.dart';
import 'book_page_buttons/book_all_buttons.dart';
import 'book_page_image/book_image.dart';
import 'book_page_texts/book_author.dart';
import 'book_page_texts/book_descrption.dart';
import 'book_page_texts/book_name.dart';
import 'book_page_texts/book_rate.dart';

class BookPage extends StatelessWidget {
  const BookPage({Key? key, required this.book}) : super(key: key);
  final BookData book;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color(0xffE5E5E5),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(height: 100,),
                    BookPageImage(book: book),
                    BookPageName(book: book),
                    BookPageAuthor(book: book),
                    BookPageRate(book: book),
                    BookPageDescription(book: book),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: BookPageButton(book: book),)
                  ],
                ),
              ),
            )
        )
    );
  }
}