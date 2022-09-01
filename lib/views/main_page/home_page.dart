import 'package:book_store_app/views/main_page/profile_row.dart';
import 'package:book_store_app/views/main_page/search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../models/book_model.dart';
import '../common_widgets/nav_bar.dart';
import 'book_container.dart';


class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 245, 245, 245),
          body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const ProfileRow(),
                  const SizedBox(
                    height: 30,
                  ),
                  SearchTextField(),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: const [
                      Text('Book List',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    child: Obx(() {
                      return Book.isFiltered.value
                          ? ListView(
                              children: Book.allBooks
                                  .where((eachBook) => eachBook.name
                                      .toLowerCase()
                                      .contains(SearchTextField
                                          .searchInputController.text))
                                  .map((eachBook) => BookContainer(
                                        book: eachBook,
                                      ))
                                  .toList(),
                            )
                          : ListView(
                              children: Book.allBooks
                                  .map((eachBook) => BookContainer(
                                        book: eachBook,
                                      ))
                                  .toList(),
                            );
                    }),
                  ),
                ]),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: const NavBar()),
    );
  }
}
