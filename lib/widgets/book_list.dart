import 'package:flutter/material.dart';

import '../data/data_source.dart';
import '../data/models/book.dart';
import 'book_item.dart';
import 'fading_list.dart';

class BookList extends StatelessWidget {
  const BookList({Key? key, required this.books}) : super(key: key);
  final List<Book>? books;

  @override
  Widget build(BuildContext context) {
    return FadingListView(
      listView: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: DataSource.localBooks.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => BookItem(book: books![index]),
      ),
    );
  }
}
