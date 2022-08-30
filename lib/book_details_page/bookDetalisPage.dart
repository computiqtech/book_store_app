import 'package:book_store_app/book_details_page/action_card.dart';
import 'package:book_store_app/book_details_page/book_card.dart';
import 'package:book_store_app/models/book_data.dart';
import 'package:book_store_app/models/myUiComponent.dart';
import 'package:book_store_app/models/myColor.dart';
import 'package:flutter/material.dart';

class BookDetailsPage extends StatelessWidget {
  const BookDetailsPage({Key? key, required this.myBook}) : super(key: key);

  final BookData myBook;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: MyColor.backgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 55, horizontal: 20),
          child: Stack(children: [
            Column(
              children: [const MyAppBar(), BookDetails(data: myBook)],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      ActionOnBook(
                          text: 'Preview', icon: Icons.format_align_left),
                      ActionOnBook(text: 'Reviews', icon: Icons.reviews),
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                        height: 60,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            color: MyColor.primaryColor,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(10, 7, 8, 14),
                                spreadRadius: 7,
                                blurRadius: 32,
                                offset: Offset(0, 7),
                              )
                            ]),
                        child: TextButton(
                            onPressed: () {
                              myBook.addBuyList();
                            },
                            child: Text(
                              'Buy Now for \$${myBook.bookPrice}',
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 16),
                            )),
                      )),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
