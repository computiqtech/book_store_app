import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../controllers/book_controller.dart';
import '../../../style.dart';
import '../empty_book_store.dart';
import 'book_details.dart';

class BookList extends StatelessWidget {
  const BookList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BookController bookController = Get.find();

    return Padding(
      padding: const EdgeInsets.only(left: 34, top: 40),
      child: Obx(
        () => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(bookController.getHeaderText, style: headerTextStyle),
            const SizedBox(height: 29),
            bookController.isBookStoreEmpty()
                ? const EmptyBookStore(
                    text: 'The book store is empty',
                    icon: CupertinoIcons.book,
                  )
                : bookController.isNotFoundBooks()
                    ? const EmptyBookStore(
                        text: 'No book with this name was found',
                        icon: CupertinoIcons.book,
                      )
                    : const SizedBox(),
            ...bookController
                .filterBooks(bookController.searchResult.value)
                .map((e) => BookDetails(book: e)),
          ],
        ),
      ),
    );
  }
}
