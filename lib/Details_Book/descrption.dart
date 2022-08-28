

import 'package:book_store_app/data/DataBook.dart';
import 'package:flutter/material.dart';

class descrption extends StatelessWidget {
  const descrption({
    Key? key,
    required this.data,
  }) : super(key: key);

  final DataBook data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child:Text(data.descrption,style: TextStyle(color:Colors.black.withOpacity(0.7)),),
    );
  }
}