import 'package:book_store_app/model.dart';
import 'package:book_store_app/page1/photo_name.dart';
import 'package:book_store_app/page1/text_field.dart';
import 'package:book_store_app/page2_Add_books/Add_books_main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../View_book/Name+Aother.dart';
import 'ListView.dart';
import 'Stack_part.dart';
import 'Title_OF_list.dart';

class Main_page1 extends StatefulWidget {
  const Main_page1({Key? key}) : super(key: key);

  @override
  State<Main_page1> createState() => _Main_page1State();
}

final RxBool isEmpty1 = true.obs;
late final Books books;
final TextEditingController searchController = TextEditingController();

class _Main_page1State extends State<Main_page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFEFEF),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 55),
        child: Obx(() {
          return Stack(
            children: [
              Column(
                children: [
                  page1_up(),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                      width: 350,
                      height: 50,
                      child: TextField(
                        controller: searchController,
                        onChanged: (x) {
                          Books.typed.value = x;

                          if (Books.typed == "") {
                            isEmpty1.value = true;
                          } else {
                            isEmpty1.value = false;
                          }
                        },
                        style: const TextStyle(fontSize: 20),
                        maxLines: 1,
                        minLines: 1,
                        textInputAction: TextInputAction.newline,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black.withOpacity(0.07),
                          hintText: 'Search... ',
                          suffixIcon: Icon(
                          Icons.search_rounded,
                          size: 30,
                          color: Books.typed.isEmpty
                          ? Colors.grey
                              : Colors.blue,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Title_OF_list(title: "Book List"),
                  if (isEmpty1.value == false)
                    Expanded(
                      child: ListView(
                        children: Books.bookList
                            .where((e) => e.bookName.value
                                .toLowerCase()
                                .contains(Books.typed.value.toLowerCase()))
                            .map((e) => books_card(books: e, color: Colors.red))
                            .toList(),
                      ),
                    ),
                  if (isEmpty1.value == true)
                    Expanded(
                      child: ListView(
                        children: Books.bookList
                            .map((e) => books_card(books: e, color: Colors.red))
                            .toList(),
                      ),
                    ),
                ],
              ),
              Stack_part(
                color_home: Colors.black,
                color_shopping: Colors.black26,
                color_favorite: Colors.black26,
              )
            ],
          );
        }),
      ),
    );
  }
}
