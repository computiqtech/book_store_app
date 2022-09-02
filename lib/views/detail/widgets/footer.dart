import 'package:flutter/material.dart';

import '../../../data/data_source.dart';
import '../../../data/models/book.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/small_custom_button.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key, required this.book}) : super(key: key);
  final Book book;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 52),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SmallCustomButton(
                  asset: 'assets/images/icons/preview.svg', title: 'Preview'),
              SmallCustomButton(
                  asset: 'assets/images/icons/reviews.svg', title: 'Reviews'),
            ],
          ),
          const SizedBox(height: 36),
          BigCustomButton(
            title: "Buy Now for \$${book.price}",
            onTap: () {
              DataSource.cartItems.add(book);
            },
          ),
        ],
      ),
    );
  }
}
