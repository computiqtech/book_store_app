import 'package:flutter/material.dart';

import '../../../data/data_source.dart';
import '../../../widgets/big_title.dart';
import '../../../widgets/book_list.dart';
import '../../../widgets/header.dart';
import 'search_bar.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, right: 16, left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Header(isHomeHeader: true),
          const SizedBox(height: 30),
          const SearchBar(),
          const SizedBox(height: 30),
          const BigTitle(title: 'Book List'),
          const SizedBox(height: 15),
          Expanded(child: BookList(books: DataSource.localBooks)),
        ],
      ),
    );
  }
}
