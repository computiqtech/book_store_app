

import 'package:flutter/material.dart';
final TextEditingController conBook = TextEditingController();

class BookName extends StatelessWidget {
  const BookName({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextField(
        controller: conBook,
        style: TextStyle(fontSize: 15,color: Color.fromRGBO(132, 136, 158, 1)),
        minLines: 1,
        maxLines: 2,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color.fromRGBO(255, 255, 255, 1),
          border: InputBorder.none,
          hintText: 'Book Name',
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none
          ),
          focusedBorder:const OutlineInputBorder(
              borderSide:  BorderSide(
                color: Colors.greenAccent,
                width: 1,
              )
          ),
        ),
      ),
    );
  }
}