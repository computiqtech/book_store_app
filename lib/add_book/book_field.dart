
import 'package:flutter/material.dart';
class BookField extends StatelessWidget {
  const BookField ({Key? key, required this.txt, required this.ctrler, this.isDes }) : super(key: key);
  final String txt;
  final TextEditingController ctrler;
  final bool? isDes;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:  BorderRadius.circular(32),
      ),
      child: TextField(
        textInputAction:(isDes==null?TextInputAction.next:TextInputAction.newline),
        controller: ctrler,
        maxLines: isDes==null?1:4,
        decoration: InputDecoration(
          hintStyle: TextStyle(fontSize: 17),
          hintText: '$txt',
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 20),
        ),

      ),
    );
  }
}


