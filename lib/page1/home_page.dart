import 'package:book_store_app/my_buttons/button1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app_bars/the_appbar1.dart';
import '../book_widget.dart';
import '../model.dart';
import '../my_text_fields/the_text_field1.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController myController = TextEditingController();
  RxString typed = ''.obs;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 245, 245, 245),
        floatingActionButton: const SizedBox(
          height: 60,
          width: 200,
          child: Button1(),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyAppBar(),
              MyTextField(
                myController: myController,
                typed: typed,
              ),
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
                          ? Book.books.map((e) => MyBook(book: e)).toList()
                          : Book.books
                              .where((e) => e.bookName
                                  .toLowerCase()
                                  .contains(typed.toLowerCase()))
                              .map((e) => MyBook(book: e))
                              .toList());
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
