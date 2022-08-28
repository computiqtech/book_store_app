import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/big_title.dart';
import 'book_list.dart';
import 'header.dart';
import 'search_bar.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, right: 16, left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Header(),
          SizedBox(height: 30),
          SearchBar(),
          SizedBox(height: 30),
          BigTitle(title: 'Book List'),
          SizedBox(height: 15),
          Expanded(child: BookList()),
        ],
      ),
    );
  }
}
