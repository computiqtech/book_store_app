import 'package:flutter/material.dart';

import '../home/models.dart';

class BookInfo extends StatelessWidget {
  const BookInfo({
    Key? key,
    required this.book,
  }) : super(key: key);

  final BookData book;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Book Cover Column(children: [
          Container(
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 5), // changes position of shadow
                ),
              ],
              // color: Colors.white,
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  book.imgUrl,
                  height: 320,
                )),
          ),
          // Book Title
          Container(
              margin: const EdgeInsets.all(15),
              child: Text(
                book.bookTitle,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
          // Book Author
          Text(
            book.bookAuthor,
            style: const TextStyle(color: Colors.grey),
          ),
          // Book rating (stars and number)
          Container(
            margin: const EdgeInsets.all(15),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Row(
                      children: book.stars,
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: const [
                        Text(
                          "4.5",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "/5.0",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          // Book Description
          Container(
              margin: const EdgeInsets.all(15),
              child: Text(
                book.bookDescription,
                style: const TextStyle(color: Colors.grey),
              )),
        ],
      ),
    );
  }
}
