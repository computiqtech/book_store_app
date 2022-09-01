import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../models/book_model.dart';
import '../book_datail/detail_page.dart';
import '../common_widgets/rate_stars.dart';

class BookContainer extends StatelessWidget {
  BookContainer({Key? key, required this.book}) : super(key: key);

  Book book;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: GestureDetector(
          onTap: () {
            Get.to(() => BookDetailsBuilder(book: book));
          },
          child: Row(
            children: [
              Container(
                height: 106,
                width: 72,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(book.imgLink!),
                    ),
                    borderRadius: BorderRadius.circular(5)),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(book.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17)),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(book.author),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(book.price,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: const [
                      RateStars(),
                      Icon(Icons.star_rounded,
                          color: Color.fromARGB(255, 187, 186, 186), size: 20)
                    ],
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
