
import 'package:flutter/material.dart';
import '../modules.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.myBook,
  }) : super(key: key);

  final MyBooks myBook;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 325,
      height: 110,
      child: SingleChildScrollView(child: MyText(text: myBook.description,
          color: Colors.black54, size: 14, height: 1.5)),
    );
  }
}
