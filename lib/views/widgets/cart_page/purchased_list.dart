import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../controllers/book_controller.dart';
import '../../../models/data.dart';
import '../../../style.dart';
import '../empty_book_store.dart';
import '../home_page/book_details.dart';

class PurchasedList extends StatelessWidget {
  const PurchasedList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BookController bookController = Get.find();

    return Padding(
      padding: const EdgeInsets.only(left: 34, top: 20),
      child: Obx(
        () => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Cart', style: headerTextStyle),
            const SizedBox(height: 48),
            bookController.isPurchasedBooksEmpty()
                ? const EmptyBookStore(
                    text: 'You don\'t have any purchases',
                    icon: CupertinoIcons.shopping_cart,
                  ):const SizedBox(),
            ...Data.purchasedBooks.map((e) => BookDetails(book: e)),
          ],
        ),
      ),
    );
  }
}
