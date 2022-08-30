import 'package:book_store_app/add_book_page/add_book_page_views/Add_book_button.dart';
import 'package:book_store_app/book_details_page/book_details_views/top_bar.dart';
import 'package:book_store_app/main.dart';
import 'package:flutter/material.dart';

class AddBookPage extends StatelessWidget {
  const AddBookPage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopBar(),
            Padding(
                padding: const EdgeInsets.only(left: 27),
                child: title('Add Book')),
            Column(
              children: [
                ReusableTextField(height: 55, hintText: 'sdffds'),
                ReusableTextField(height: 100, hintText: 'sdffds'),
                ReusableTextField(height: 150, hintText: 'sdffds'),
                Text("data"),
                Text("data"),
                Text("data")
              ],
            )
          ],
        ),
        floatingActionButton: AddBookButton());
  }
}


Widget ReusableTextField({required height, required hintText } ) {
  // TODO: implement build
  return Container(
  width: 100,
  height: height * 1.0,
  child: TextField(
    decoration: InputDecoration(
      contentPadding: EdgeInsets.all(10.0),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      hintText: hintText,
    ),
  ),
);
}
