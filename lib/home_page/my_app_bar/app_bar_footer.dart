import 'package:flutter/material.dart';

class BookListText extends StatelessWidget {
  const BookListText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 280),
      child: Text('Book List',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
    );
  }
}