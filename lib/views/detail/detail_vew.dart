import 'package:flutter/material.dart';
import '../../data/models/book.dart';
import 'widgets/body.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key? key, required this.book}) : super(key: key);
  final Book book;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(book: book),
      ),
    );
  }
}
