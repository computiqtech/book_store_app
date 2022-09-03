import 'package:book_store_app/widgets/book_list.dart';
import 'package:book_store_app/widgets/big_title.dart';
import 'package:book_store_app/widgets/header.dart';
import 'package:flutter/material.dart';

import '../../../data/data_source.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, right: 16, left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(),
          SizedBox(height: 30),
          BigTitle(title: "Cart"),
          SizedBox(height: 15),
          BookList(books: DataSource.cartItems),
        ],
      ),
    );
  }
}
