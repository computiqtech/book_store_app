
import 'package:book_store_app/PageOne/my_end_card.dart';
import 'package:book_store_app/PageOne/my_list_view.dart';
import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Stack(
          children: const[
            MyListView(),
            MyEndCard(),
          ],
        )

    );
  }
}