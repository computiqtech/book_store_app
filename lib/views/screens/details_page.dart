import 'package:flutter/material.dart';

import '../../models/book.dart';
import '../../style.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/details_page/all_deatails.dart';
import '../widgets/details_page/book_photo.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key, required this.book}) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: const CoustomAppBar(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: white,
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 12),
              BookPhoto(image: book.image),
              AllDetails(book: book),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
