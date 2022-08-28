import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../home_page/book_model.dart';
import '../home_page/card_book.dart';
class SavedBody extends StatelessWidget {
  final String txtHeader;

  const SavedBody({
    Key? key, required this.txtHeader,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          SizedBox(height: 28,),
          Text(txtHeader, style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w600
          ),),
          const SizedBox(height: 36,),
          Obx(() {
            return Column(
              children: Book.books.where((e) => e.isSaved.value).map((e)  => CardBook(book: e)).toList(),
            );
          }
          )
        ],
      ),
    );
  }
}