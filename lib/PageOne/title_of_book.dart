
import 'package:book_store_app/model.dart';
import 'package:flutter/material.dart';

class Title0fBook extends StatefulWidget {
  const Title0fBook({
    Key? key, required this.name,
  }) : super(key: key);
final String name;

  @override
  State<Title0fBook> createState() => _Title0fBookState();
}

class _Title0fBookState extends State<Title0fBook> {
  @override

  Widget build(BuildContext context) {

    return
        Text('${widget.name}',
          style:const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),
      );
  }
}