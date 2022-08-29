import 'package:book_store_app/book_details_views/book_author.dart';
import 'package:book_store_app/book_details_views/book_cover.dart';
import 'package:book_store_app/book_details_views/book_description.dart';
import 'package:book_store_app/book_details_views/book_rating.dart';
import 'package:book_store_app/book_details_views/book_title.dart';
import 'package:book_store_app/book_details_views/bottom_buttons.dart';
import 'package:book_store_app/book_details_views/top_bar.dart';
import 'package:book_store_app/main.dart';
import 'package:book_store_app/main_views/profile.dart';
import 'package:book_store_app/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BookDetailsPage extends StatefulWidget {
  const BookDetailsPage({Key? key}) : super(key: key);

  @override
  State<BookDetailsPage> createState() => _BookDetailsPageState();
}

class _BookDetailsPageState extends State<BookDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   systemOverlayStyle: const SystemUiOverlayStyle(
        //       statusBarColor: Colors.transparent,
        //       statusBarIconBrightness: Brightness.dark),
        //   backgroundColor: const Color(0xfff0f0f0),
        //   elevation: 0,
        //   toolbarHeight: 30,
        // ),
        body: Column(
          children: [
            const TopBar(),
            Column(
              children: [
                BookCover(url: BookModel.book[0].imageUrl),
                BookTitle(title: BookModel.book[0].title),
                BookAuthor(author: BookModel.book[0].author,),
                SizedBox(height: 5,),
                BookRating(rating: BookModel.book[0].rating,),
                BookDescription(description: BookModel.book[0].description,),
              ],
            )
          ],
        ),
        floatingActionButton: bottom_buttons());
  }
}
