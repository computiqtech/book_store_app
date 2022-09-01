import 'package:book_store_app/views/book_datail/book_info_column.dart';
import 'package:book_store_app/views/common_widgets/rate_stars.dart';
import 'package:flutter/material.dart';
import '../../models/book_model.dart';
import '../common_widgets/app_bar.dart';
import 'button_builder.dart';

class BookDetailsBuilder extends StatelessWidget {
  const BookDetailsBuilder({Key? key, required this.book}) : super(key: key);
  final Book book;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            const MyAppBar(),
            BookInfo(book: book),
            const SizedBox(
              height: 7,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: const [
                    RateStars(),
                    Icon(Icons.star_rounded,
                        color: Color.fromARGB(255, 187, 186, 186), size: 20)
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  book.rate.toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                const Text('/5.0',
                    style: const TextStyle(
                        color: Color.fromARGB(255, 144, 143, 143)))
              ],
            ),
            const SizedBox(
              height: 7,
            ),
            const Flexible(
                child: Text(
              "A spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.",
              style: TextStyle(
                  height: 1.8, color: Color.fromARGB(255, 119, 118, 118)),
            )),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  ButtonBuilder(icon: Icons.article, text: 'Preview'),
                  ButtonBuilder(icon: Icons.message, text: 'Review')
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Book.addedToCardBooks.add(book);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('${book.name} has been added successfully'),
                ));
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(319, 60),
                primary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
              child: Text('Buy Now for ${book.price}',
                  softWrap: true,
                  overflow: TextOverflow.visible,
                  style: const TextStyle(color: Colors.white)),
            )
          ],
        ),
      )),
    );
  }
}
