import 'package:book_store_app/bookmodel.dart';
import 'package:book_store_app/Main_page/button.dart';
import 'package:book_store_app/Main_page/shape_list_book.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Search.dart';
import 'appbar.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final TextEditingController SearchController = TextEditingController();
  RxString typed = ''.obs;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CupertinoColors.systemGrey6,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MYAppBar(),
              Search(SearchController:SearchController, typed:typed),

              const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  'Book List',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),


              Expanded(
                child: Obx(() {
                  return ListView(
                      children: typed.value.isEmpty
                          ? Book.books.map((e) => Shape(book: e)).toList()
                          : Book.books.where((e) => e.book_name.toLowerCase().contains(typed.toLowerCase()))
                              .map((e) => Shape(book: e))
                              .toList());
                }),
              ),
            ],
          ),
        ),
        floatingActionButton: const SizedBox(
          height: 60,
          width: 200,
          child:Button(),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
