
import 'package:flutter/material.dart';
import 'package:book_store_app/add_book/form.dart';

class AddBook_body extends StatelessWidget {
  const AddBook_body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(height: 28,),
          Text('Add Book',style:  TextStyle(
              fontSize: 24,fontWeight: FontWeight.w600
          ),),
          BookForm(),
        ],
      ),
    );
  }
}