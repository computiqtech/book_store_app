import 'package:flutter/material.dart';
import '../first_raw.dart';
import 'add_button.dart';
import 'add_field.dart';


class AddBooks extends StatefulWidget {
  const AddBooks({Key? key}) : super(key: key);

  @override
  State<AddBooks> createState() => _AddBooksState();
}

class _AddBooksState extends State<AddBooks> {
   static TextEditingController bookName =TextEditingController();
   static TextEditingController autherName =TextEditingController();
   static TextEditingController price =TextEditingController();
   static TextEditingController image =TextEditingController();
   static TextEditingController description =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        backgroundColor: const Color(0xffE5E5E5),
      ),
      backgroundColor: const Color(0xffE5E5E5),
        body:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 15.0),
                    child: FirstRaw(),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 25.0,top: 18.0,bottom: 59.0),
                    child: Text('Add Book',style: TextStyle(
                      color: Colors.black,
                      fontFamily:'Poppins',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                  Expanded(
                    child: ListView(
                        children:[
                          AddFields(fieldName: 'Book Name', maxLines: 1, myCont: bookName),
                          AddFields(fieldName: 'Auther Name', maxLines: 1, myCont: autherName),
                          AddFields(fieldName: 'Price', maxLines: 1, myCont: price),
                          AddFields(fieldName: 'Image Link', maxLines: 1, myCont: image),
                          AddFields(fieldName: 'Description', maxLines: 5, myCont: description),

                        ]),),

                  AddButton(bookName: bookName, autherName: autherName,
                      price: price, image: image, description: description),
                ]),

    );
  }
}
