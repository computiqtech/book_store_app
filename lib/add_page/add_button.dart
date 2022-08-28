import 'package:book_store_app/model.dart';
import 'package:flutter/material.dart';
class AddButton extends StatelessWidget {
  const AddButton({
    Key? key, required this.bookName,
    required this.autherName,
    required this.price,
    required this.image,
    required this.description,
  }) : super(key: key);
  final TextEditingController bookName ;
  final TextEditingController autherName ;
  final TextEditingController price ;
  final TextEditingController image ;
  final TextEditingController description ;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305,
      height: 60,
      margin: const EdgeInsets.only(left: 45.0,bottom: 45.0),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: TextButton(onPressed: () {
        Books book = Books(
            bookName: bookName.text,
            auther: autherName.text,
            price: price.text,
            description: description.text,
            image: image.text);
        Books.book.add(book);
        bookName.text='';
        autherName.text='';
        price.text='';
        description.text='';
        image.text='';
        },
          child: const Text('ADD',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Colors.white
            ),)
      )
    );
  }
}