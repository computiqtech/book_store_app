
import 'package:flutter/cupertino.dart';

class Card3 extends StatelessWidget {
  const Card3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Text('Book List', style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold
      ),),
    );
  }
}