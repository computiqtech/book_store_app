import 'package:flutter/material.dart';
import 'package:book_store_app/add_book/book_field.dart';
import 'package:book_store_app/add_book/main_add.dart';
import 'package:book_store_app/home_page/book_model.dart';
import 'package:get/get.dart';

class BookForm extends StatefulWidget {
  const BookForm({Key? key}) : super(key: key);

  @override
  State<BookForm> createState() => _BookFormState();
}

class _BookFormState extends State<BookForm> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      reverse: true,
      child: Column(
        children: [
          SizedBox(
            height: 56,
          ),
          BookField(txt: 'Book Name', ctrler: bookNameC),
          BookField(txt: 'Author Name', ctrler: authorC),
          BookField(txt: 'Price', ctrler: pricC),
          BookField(txt: 'Image link', ctrler: imgPathC),
          BookField(
            txt: 'Description',
            ctrler: descripC,
            isDes: true,
          ),
          ElevatedButton(
              onPressed: () {
                Book.add(bookNameC.text, authorC.text, pricC.text,
                    imgPathC.text, descripC.text, false.obs);
                bookNameC.text=''; authorC.text=''; pricC.text='';
                imgPathC.text=''; descripC.text='';
                setState(() {
                });
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 55),
                //padding: EdgeInsets.symmetric(horizontal: 24,vertical: 8),
                primary: Colors.black,
                elevation: 0,
              ),
              child: const Text(
                'Add',
                style: TextStyle(color: Colors.white),
              )),
          SizedBox(height: 90,),
        ],
      ),
    );
    ;
  }
}
