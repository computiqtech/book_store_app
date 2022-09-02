
import 'package:book_store_app/main.dart';
import 'package:book_store_app/modules.dart';
import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
        MyBooks.book.add(MyBooks(imageLink: Add.imageController.text, bookName: Add.nameController.text,
            bookAuth: Add.authController.text, price: Add.priceController.text, description: Add.descriptionController.text));
      },
      style: TextButton.styleFrom(
          padding: EdgeInsets.zero
      ),
      child: Container(
        alignment: Alignment.center,
        width: 320,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Text('Add', style: TextStyle(fontSize: 16, color: Colors.white),),
      ),
    );
  }
}