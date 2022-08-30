import 'package:book_store_app/add_book_page/add_book_page.dart';
import 'package:book_store_app/main.dart';
import 'package:book_store_app/models/book_model.dart';
import 'package:flutter/material.dart';

class AddBookButton extends StatelessWidget {
  const AddBookButton({
    Key? key,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 25, right: 5),
            child: Container(
              width: 350,
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(13),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: const Offset(0, 9))
                  ]),
              child: TextButton(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  )),
                  child: const Text("Add",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                  onPressed: () {
                    BookModel.book.add(BookModel(
                        imageUrl: AddBookPage.imageLink.text,
                        rating: (double.parse(AddBookPage.rating.text)),
                        title: AddBookPage.bookName.text,
                        author: AddBookPage.authorName.text,
                        price: AddBookPage.price.text,
                        description: AddBookPage.description.text,
                        inCart: true));
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyHomePage()));
                    AddBookPage.imageLink.clear();
                    AddBookPage.rating.clear();
                    AddBookPage.bookName.clear();
                    AddBookPage.authorName.clear();
                    AddBookPage.price.clear();
                    AddBookPage.description.clear();
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
