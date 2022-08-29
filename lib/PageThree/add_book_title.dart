
import 'package:flutter/material.dart';

class AddBookTitle extends StatelessWidget {
  const AddBookTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
      child: Text('Add Book',style: TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.bold
      ),),
    );
  }
}