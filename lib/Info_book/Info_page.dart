import 'package:book_store_app/Info_book/InfoButtons.dart';
import 'package:book_store_app/Info_book/Info.dart';
import 'package:book_store_app/Info_book/book_image.dart';
import 'package:book_store_app/bookmodel.dart';
import 'package:flutter/material.dart';
import '../add_book_page/app_bar_addpage.dart';
import 'Buy_button.dart';

class Infopage extends StatelessWidget {
  const Infopage({Key? key, required this.book}) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 245, 245, 245),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const AppBaradd(),
              MyBookImage(book: book),
              Info(book: book),

              Stack(children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        InfoButton(icon: Icons.menu_outlined, text: 'Preview'),
                        InfoButton(icon: Icons.comment_outlined, text: 'Reviews')
                      ],
                    ),
                    Buybutton(book:book,),
                  ],
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}
