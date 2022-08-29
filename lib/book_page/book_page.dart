import 'package:book_store_app/home/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'book_info.dart';

class BookPage extends StatelessWidget {
  const BookPage({Key? key, required this.book}) : super(key: key);
  final BookData book;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark),
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 40,
      ),
      backgroundColor: const Color(0x00e5e5e5),
      body: Container(
        width: double.maxFinite,
        margin: const EdgeInsets.symmetric(horizontal: 15),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Stack(children: [
          BookInfo(book: book),
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Container(
              width: double.maxFinite,
              height: 50,
              margin: const EdgeInsets.only(bottom: 115, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Row(
                    children: [
                      Container(margin: EdgeInsets.only(right: 15), child: Icon(Icons.short_text_outlined)),
                      Text("Preview", style: TextStyle(fontSize: 18),)
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Row(
                    children: [
                      Container(margin: EdgeInsets.only(right: 15), child: Icon(Icons.textsms_outlined)),
                      Text("Reviews", style: TextStyle(fontSize: 18),)
                    ],
                  ),
                )
              ],),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.bottomCenter,
              child: TextButton(
                onPressed: () {
                  BookData.boughtBooks.add(book);
                  const SnackBar(content: Text("Added to the cart successfully"),);
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  height: 60,
                  width: double.maxFinite,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black),
                  child: Text(
                    r"Buy Now for $" + "${book.bookPrice}",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              )
            ),

        ]),
      ),
    );
  }
}
