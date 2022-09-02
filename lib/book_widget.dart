import 'package:flutter/material.dart';

import 'about_books/book_details_page.dart';
import 'model.dart';

class MyBook extends StatefulWidget {
  const MyBook({Key? key, required this.book}) : super(key: key);

  final Book book;

  @override
  State<MyBook> createState() => _MyBookState();
}

class _MyBookState extends State<MyBook> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BookDetailsPage(book: widget.book),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              width: 72,
              height: 105,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.book.imageUrl),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blue),
            ),
            SizedBox(
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.book.bookName,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    widget.book.author,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    widget.book.price,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      for (var i = 0; i < 4; i++)
                        const Padding(
                          padding: EdgeInsets.only(right: 2),
                          child:
                              Icon(Icons.star, size: 16, color: Colors.orange,),
                        ),
                      const Icon(Icons.star, size: 16, color: Colors.grey,),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
