import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/book.dart';
import '../../../style.dart';
import '../../screens/details_page.dart';
import '../book_rating.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({Key? key, required this.book}) : super(key: key);

  final Book book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 2, bottom: 23),
      child: InkWell(
        onTap: () => Get.to(DetailsPage(book: book)),
        child: Row(
          children: [
            Container(
              height: 106,
              width: 72,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
                image: DecorationImage(
                  image: AssetImage(book.image),
                ),
              ),
            ),
            const SizedBox(width: 26),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Text(
                    book.name,
                    style: headerTextStyle.copyWith(fontSize: 16),
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  book.author,
                  style: titleTextStyle.copyWith(
                    color: black.withOpacity(0.5),
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 7),
                Text(
                  '\$${book.price}',
                  style: titleTextStyle,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                BookRating(rating: book.rating),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
