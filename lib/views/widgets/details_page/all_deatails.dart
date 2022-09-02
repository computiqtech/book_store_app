import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/book_controller.dart';
import '../../../models/book.dart';
import '../../../style.dart';
import '../book_rating.dart';
import '../primary_button.dart';
import 'custom_button.dart';

class AllDetails extends StatelessWidget {
  const AllDetails({Key? key, required this.book}) : super(key: key);

  final Book book;
  @override
  Widget build(BuildContext context) {
    BookController bookController = Get.find();

    return Column(
      children: [
        Text(
          book.name,
          style: headerTextStyle,
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 4),
        Text(
          book.author,
          style: titleTextStyle.copyWith(
            color: black.withOpacity(0.5),
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BookRating(rating: book.rating),
            const SizedBox(width: 10),
            Text.rich(
              TextSpan(
                text: '${book.rating}',
                style: titleTextStyle,
                children: [
                  TextSpan(
                    text: ' / 5.0',
                    style: titleTextStyle.copyWith(
                      color: black.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 18),
        Stack(
          children: [
            SizedBox(
              height: 96,
              child: SingleChildScrollView(
                physics: const ScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Text(
                  book.description,
                  style: titleTextStyle.copyWith(
                    color: black.withOpacity(0.5),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              alignment: Alignment.bottomCenter,
              height: 136,
              width: double.infinity,
              child: Row(
                children: const [
                  Flexible(
                    fit: FlexFit.tight,
                    child: CustomButton(
                      text: 'Preview',
                      icon: 'assets/images/preview_icon.svg',
                    ),
                  ),
                  SizedBox(width: 13),
                  Flexible(
                    fit: FlexFit.tight,
                    child: CustomButton(
                      text: 'Reviews',
                      icon: 'assets/images/reviews_icon.svg'
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 36),
        PrimaryButton(
          text: 'Buy Now for \$${book.price}',
          padding: 28,
          onPressed: () {
            bookController.buyBook(book);
            bookController.successfulBookPurchase(context);
          },
        ),
      ],
    );
  }
}
