import '../bookmodel.dart';
import 'package:flutter/material.dart';

class Add_page_buttons extends StatelessWidget {
   Add_page_buttons({Key? key,}) : super(key: key);


  final book_name = TextEditingController();
  final author_name = TextEditingController();
  final price = TextEditingController();
  final description = TextEditingController();
  final image_link = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Book book = Book(
          book_name.text,
          author_name.text,
          description.text,
          price.text,
          image_link.text,
        );
        Book.books.add(book);
        Navigator.pop(context);
      },
      child: Container(
        width: 335,
        height: 60,
        margin: const EdgeInsets.symmetric(vertical: 20),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black),
        child: const Text(
          'Add',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
