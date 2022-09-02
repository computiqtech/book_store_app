
import 'package:flutter/material.dart';
import '../my_text_field.dart';

class Card2 extends StatelessWidget {
  const Card2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: MyTextField(myWidth: double.maxFinite, myHeight: 50, lines: 1, hint: 'Search...', suffixIcon: Icons.search_rounded, ),
    );
  }
}
