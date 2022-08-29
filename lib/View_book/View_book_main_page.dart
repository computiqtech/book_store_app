import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model.dart';
import '../page1/main_page1.dart';
import '../page2_Add_books/App_bar.dart';
import 'Description.dart';
import 'Name+Aother.dart';
import 'Row_of_button.dart';
import 'View_books.dart';
import '../page2_Add_books/App_bar.dart';

class Veiw_Books extends StatelessWidget {
  const Veiw_Books({
    Key? key,
    required this.note,
  }) : super(key: key);
  final Books note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFEFEF),
      body: Stack(
        children: [

          Obx(() {
            return Column(
              children: [
                Expanded(
                  child: ListView(
                    children: Books.bookList
                        .where((e) => e.isClickted.value)
                        .map((e) => page_veiw(
                              books: e,
                            ))
                        .toList(),
                  ),
                ),
              ],
            );
          }),

          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 45),
            child: App_bar(books: note),
          ),

        ],
      ),
    );
  }
}

class page_veiw extends StatelessWidget {
  const page_veiw({
    Key? key,
    required this.books,
  }) : super(key: key);

  final Books books;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
      child: Column(
        children: [
          //App_bar(books: books),
          Books_Cover(
            links: books.imageLink.value,
          ),
          books_name(
            Books_name: books.bookName.value,
            Aother_name: books.authorName.value,
          ),
          Description11(Description1: books.description.value),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Row_of_button(
                text: "Preview",
                icon: Icon(
                  Icons.notes,
                  size: 30,
                  color: Colors.black,
                ),
              ),
              Row_of_button(
                text: "Reviews",
                icon: Icon(
                  Icons.reviews,
                  size: 24,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 30),
            child: Container(
                width: 319,
                height: 60,
                child: ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFF06070D)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                            side: BorderSide(color: Color(0xFF06070D)))),
                  ),
                  onPressed: () {
                    books.makeBuy();
                  },
                  child: Text("Buy Now for\$ ${books.price.value}",
                      style: TextStyle(fontSize: 18)),
                )),
          ),
        ],
      ),
    );
  }
}
