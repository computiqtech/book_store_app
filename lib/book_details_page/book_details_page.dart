import 'package:book_store_app/book_details_page/book_details_views/book_author.dart';
import 'package:book_store_app/book_details_page/book_details_views/book_cover.dart';
import 'package:book_store_app/book_details_page/book_details_views/book_description.dart';
import 'package:book_store_app/book_details_page/book_details_views/book_rating.dart';
import 'package:book_store_app/book_details_page/book_details_views/book_title.dart';
import 'package:book_store_app/book_details_page/book_details_views/bottom_buttons.dart';
import 'package:book_store_app/book_details_page/book_details_views/top_bar.dart';
import 'package:book_store_app/models/book_model.dart';
import 'package:flutter/material.dart';

class BookDetailsPage extends StatelessWidget {
  const BookDetailsPage({Key? key, required this.desiredBook}) : super(key: key);
  final BookModel desiredBook;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            const TopBar(),
            Column(
              children: [
                BookCover(url: desiredBook.imageUrl),
                BookTitle(title: desiredBook.title),
                BookAuthor(
                  author: desiredBook.author,
                ),
                const SizedBox(
                  height: 5,
                ),
                BookRating(
                  rating: desiredBook.rating,
                ),
                BookDescription(
                  description: desiredBook.description,
                ),
              ],
            )
          ],
        ),
        floatingActionButton: bottom_buttons());
  }
}

