import 'package:book_store_app/models/myColor.dart';
import 'package:book_store_app/models/book_data.dart';
import 'package:flutter/material.dart';

import 'inputfields.dart';

TextEditingController nameControl = TextEditingController();
TextEditingController authorControl = TextEditingController();
TextEditingController priceControl = TextEditingController();
TextEditingController linkControl = TextEditingController();
TextEditingController descriptionControl = TextEditingController();

class InputBookDetails extends StatelessWidget {
  const InputBookDetails({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, left: 15, right: 15),
      child: Column(
        children: [
          InputField(myControl: nameControl, hint: 'Book Name', errorOn: true, line: 1,),
          InputField(myControl: authorControl, hint: 'Author Name', errorOn: true, line: 1,),
          InputField(myControl: priceControl, hint: 'Price', errorOn: true, line: 1,),
          InputField(myControl: linkControl, hint: 'Image link', errorOn: false, line: 1,),
          InputField(myControl: descriptionControl, hint: 'Description', errorOn: false, line: 7,),
          Container(
            height: 60,
            width: double.maxFinite,
            decoration: BoxDecoration(
                color: MyColor.primaryColor,
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(10, 7, 8, 14),
                    spreadRadius: 7,
                    blurRadius: 32,
                    offset: Offset(0, 7),
                  )
                ]),
            child: TextButton(
                onPressed: () {
                  BookData.addBook();
                },
                child: const Text(
                  'Add',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )),
          ),


        ],
      ),
    );
  }
}
