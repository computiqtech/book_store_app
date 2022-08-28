
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Expanded(
        child: Column(
          children: [
            SizedBox(height: 56,),
            BookField(txt: 'Book Name',ctrler: bookNameC),
            SizedBox(height: 14,),
            BookField(txt: 'Author Name',ctrler:authorC),
            SizedBox(height: 14,),
            BookField(txt: 'Price',ctrler: pricC),
            SizedBox(height: 14,),
            BookField(txt: 'Image link',ctrler: imgPathC),
            SizedBox(height: 14,),
            BookField(txt: 'Description',ctrler: descripC,isDes: true,),
            SizedBox(height: 14,),
            ElevatedButton(onPressed: (){
              Book.add(bookNameC.text,authorC.text,pricC.text,imgPathC.text,descripC.text,false.obs);
            },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity,55),
                //padding: EdgeInsets.symmetric(horizontal: 24,vertical: 8),
                primary: Colors.black,
                elevation: 0,
              ),
              child: Text('Add',style: TextStyle(color: Colors.white),)
              ),

          ],
        ),
      ),
    );;
  }
}
