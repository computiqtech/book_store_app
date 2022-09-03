import 'dart:io';

import 'package:book_store_app/modules/home/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:book_store_app/shared/components/components.dart';
import "package:book_store_app/model/model.dart";

class AddBook extends StatefulWidget {
  const AddBook({Key? key}) : super(key: key);

  @override
  State<AddBook> createState() => _AddBookState();
}

class _AddBookState extends State<AddBook> {
  @override
  var nameBook = TextEditingController();
  var nameAuthor = TextEditingController();
  var price = TextEditingController();
  var image = TextEditingController();
  var description = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 229, 229),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 236, 229, 229),
        titleSpacing: 20,
        elevation: 0,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return HomeScreen();
                }));
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            )
          ],
        ),
        actions: [
          Icon(
            Icons.more_vert,
            color: Colors.black,
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Add Book",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            //Form for the information
            Expanded(
                child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    // name book
                    Container(
                      padding: EdgeInsets.only(
                          left: 20, top: 5, right: 5, bottom: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        controller: nameBook,
                        decoration: InputDecoration(
                          hintText: "Book Name ",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // Author name
                    Container(
                      padding: EdgeInsets.only(
                          left: 20, top: 5, right: 5, bottom: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        controller: nameAuthor,
                        decoration: InputDecoration(
                          hintText: "Author Name ",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    //price
                    Container(
                      padding: EdgeInsets.only(
                          left: 20, top: 5, right: 5, bottom: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        controller: price,
                        decoration: InputDecoration(
                          hintText: "Price  ",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    //Image link
                    Container(
                      padding: EdgeInsets.only(
                          left: 20, top: 5, right: 5, bottom: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        controller: image,
                        decoration: InputDecoration(
                          hintText: "Image Link ",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    //Description
                    Container(
                      padding: EdgeInsets.only(
                          left: 20, top: 5, right: 5, bottom: 5),
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        controller: description,
                        decoration: InputDecoration(
                          hintText: "Description ",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    buildbotton(onPressed: () {
                      Book(nameBook.text, nameAuthor.text, price.text,
                              image.text, description.text)
                          .add();
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                            screen = 1 ; 
                        return HomeScreen();
                      }));
                    }),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
