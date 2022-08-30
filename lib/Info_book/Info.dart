import 'package:book_store_app/bookmodel.dart';
import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({
    Key? key,
    required this.book,
  }) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              book.book_name,
              style: const TextStyle(
                fontSize: 26,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              book.author,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
              Padding(
                  padding: EdgeInsets.only(right: 2),
                  child: Icon(Icons.star, size: 16, color: Colors.orange),
                ),
               Icon(Icons.star, size: 16, color: Colors.orange),
              Icon(Icons.star, size: 16, color: Colors.orange),
              Icon(Icons.star, size: 16, color: Colors.grey),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  '4.0/5.0',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              book.description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
