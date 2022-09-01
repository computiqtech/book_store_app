import 'package:book_store_app/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../common_widgets/app_bar.dart';
import '../main_page/book_container.dart';
import '../common_widgets/nav_bar.dart';

class AddedToCardBook extends StatelessWidget {
  const AddedToCardBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            children: [
              const MyAppBar(),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Text('Cart',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Obx(() {
                return Expanded(
                  child: ListView(
                    children: Book.addedToCardBooks
                        .map((element) => BookContainer(book: element))
                        .toList(),
                  ),
                );
              }),
              const NavBar()
            ],
          ),
        ),
      ),
    );
  }
}
