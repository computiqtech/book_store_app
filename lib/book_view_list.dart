
import 'package:book_store_app/book.dart';
import 'package:book_store_app/book_details_screen.dart';
import 'package:book_store_app/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookViewList extends StatelessWidget {
  const BookViewList({Key? key, required this.allBooks,}) : super(key: key);

  final bool allBooks;

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: Obx(() {
          return ListView(
            padding: const EdgeInsets.only(bottom: 100),
            
            children: Book.returnLibrary(allBooks).map((e) => GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BookDetailsScreen(book: e,)),

                  );
                },
                child: BookVeiwCard(book: e)
            )).toList(),
          );
        }
      ),
    );
  }
}

class BookVeiwCard extends StatelessWidget {
  const BookVeiwCard({Key? key, required this.book,}) : super(key: key);
  final Book book;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 20),
            width: 100,
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: book.bookImage,fit: BoxFit.fill)
            ),
          ),
          Container(
            height: 140,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${book.bookName}",
                  style: TextStyle(
                      color: Color(0xff535458),
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
                Text("${book.authorName}",
                  style: TextStyle(
                      color: Color(0xffc8c8c9)
                  ),
                ),
                Text(r"$""${book.price}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),
                ),
                Stars(value: book.rate,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
