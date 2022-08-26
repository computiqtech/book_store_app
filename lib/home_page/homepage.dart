import 'package:book_store_app/add_book_page/add_book_page.dart';
import 'package:book_store_app/bookmodel.dart';
import 'package:book_store_app/cart_page/cart_page.dart';
import 'package:book_store_app/floatingbutton.dart';
import 'package:book_store_app/mybook.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../myicons.dart';
import 'myappbar.dart';
import 'mytextfield.dart';

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
        backgroundColor: Color.fromARGB(255, 245, 245, 245),
        floatingActionButton: SizedBox(
          height: 60,
          width: 200,
          child: MyFloatingButton(),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyAppBar(),
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
                              .where((e) => e.book_name
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
