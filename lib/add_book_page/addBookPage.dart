import 'package:book_store_app/add_book_page/input_book_field.dart';
import 'package:book_store_app/models/myColor.dart';
import 'package:book_store_app/models/myUiComponent.dart';
import 'package:flutter/material.dart';

class AddBookPage extends StatefulWidget {
  const AddBookPage({Key? key}) : super(key: key);

  @override
  State<AddBookPage> createState() => _AddBookPageState();
}

class _AddBookPageState extends State<AddBookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColor.backgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 55, horizontal: 5),
          child: Column(
            children:  [
              const MyAppBar(),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const[
                    Text(
                      'Add Book',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    InputBookDetails()

                  ],
                ),
              ),


            ],  
          ),
        ),
    );
  }
}
