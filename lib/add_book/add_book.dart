import 'package:book_store_app/home/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddBook extends StatelessWidget {
  AddBook({Key? key}) : super(key: key);

  String newBookName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.dark),
          backgroundColor: Colors.white,
          elevation: 0,
          toolbarHeight: 30,
        ),
        backgroundColor: const Color(0x00e5e5e5),
        body: Container(
          width: double.maxFinite,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Container(
                margin: EdgeInsets.only(
                  bottom: 25,
                ),
                child: Text(
                  "Add Book",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
              // Fields
              Container(
                child: Column(children: MyFields.myFields
                    // TextFieldData.bookFieldsList
                    //     .map((e) => MyTextField(data: e))
                    //     .toList(),
                    ),
              ),
              // Submit button
              TextButton(
                onPressed: () {
                  addNewBook();
                },
                child: Container(
                  height: 60,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black),
                  child: Text(
                    "Add",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ));
  }

  void addNewBook() {
    if (MyFields._name.text.isNotEmpty &
        MyFields._author.text.isNotEmpty &
        MyFields._price.text.isNotEmpty &
        MyFields._link.text.isNotEmpty &
        MyFields._desc.text.isNotEmpty) {
      BookData.books.add(BookData(
          imgUrl: MyFields._link.text,
          bookTitle: MyFields._name.text,
          bookAuthor: MyFields._author.text,
          bookPrice: MyFields._price.text,
          bookDescription: MyFields._desc.text));
      MyFields._name.text = "";
      MyFields._author.text = "";
      MyFields._price.text = "";
      MyFields._link.text = "";
      MyFields._desc.text = "";
    }
  }
}

class MyFields {
  static TextEditingController _name = TextEditingController();
  static TextEditingController _author = TextEditingController();
  static TextEditingController _price = TextEditingController();
  static TextEditingController _link = TextEditingController();
  static TextEditingController _desc = TextEditingController();

  static List<Container> myFields = [
    // Name
    Container(
        width: double.maxFinite,
        height: 53,
        margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          color: Colors.white,
        ),
        child: TextField(
          controller: _name,
          decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(bottom: 15),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            hintText: "Book Name",
          ),
        )),
    // Author
    Container(
        width: double.maxFinite,
        height: 53,
        margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          color: Colors.white,
        ),
        child: TextField(
          controller: _author,
          decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(bottom: 15),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            hintText: "Author Name",
          ),
        )),
    // Price
    Container(
        width: double.maxFinite,
        height: 53,
        margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          color: Colors.white,
        ),
        child: TextField(
          controller: _price,
          decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(bottom: 15),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            hintText: "Price",
          ),
        )),
    // Image link
    Container(
        width: double.maxFinite,
        height: 53,
        margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          color: Colors.white,
        ),
        child: TextField(
          controller: _link,
          decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(bottom: 15),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            hintText: "Image Link",
          ),
        )),
    // Description
    Container(
        width: double.maxFinite,
        height: 139,
        margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          color: Colors.white,
        ),
        child: TextField(
          controller: _desc,
          decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(bottom: 15),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            hintText: "Description",
          ),
        )),
  ];
}
