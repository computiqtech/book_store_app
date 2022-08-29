
import 'package:flutter/material.dart';

class MyCardTitle extends StatelessWidget {
  const MyCardTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding (
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Text('Cart',style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black
      ),),
    );
  }
}