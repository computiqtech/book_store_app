import 'package:book_store_app/home_page/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'model.dart';


class AddBook extends StatefulWidget {
  AddBook({Key? key}) : super(key: key);

  @override
  State<AddBook> createState() => _AddBookState();
}

class _AddBookState extends State<AddBook> {

  final ScrollController scrollController = ScrollController();
  final TextEditingController bookNameController = TextEditingController();
  final TextEditingController autherNameController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController imageLinkController = TextEditingController();
  final TextEditingController descController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: Padding(
        padding: const EdgeInsets.all(10),
    child:
    IconButton(
    icon: Icon(
    Icons.arrow_back_ios, color: Colors.black, size: 30),
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => HomePage()),
     );
    },
    )
    ),
    ),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 125, 0, 20),
            child: Align(
                alignment: Alignment.centerLeft,
                child:
                Text('Add Book',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),)
            ),
          ),
          Expanded(
                child:ListView(
                      controller: scrollController,
                      padding: EdgeInsets.zero,
                      children: [
                        Container(
                          height: 600,
                          padding: EdgeInsets.fromLTRB(35, 0, 35, 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 300,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25.0),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0,0),
                                      blurRadius: 15.0,
                                      color: Color.fromRGBO(7, 8, 14, 0.05),
                                    ),
                                  ],
                                ),
                                child: TextField(
                                  controller: bookNameController,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 20.0
                                    ),
                                    fillColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: const BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                      borderSide: const BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                      ),
                                    ),
                                    hintText: "Book Name",
                                  ),
                                ),
                              ),
                              Container(
                                width: 300,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25.0),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0,0),
                                      blurRadius: 15.0,
                                      color: Color.fromRGBO(7, 8, 14, 0.05),
                                    ),
                                  ],
                                ),
                                child: TextField(
                                  controller: autherNameController,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 20
                                    ),
                                    fillColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: const BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                      borderSide: const BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                      ),
                                    ),
                                    hintText: "Auther Name",
                                  ),
                                ),
                              ),
                              Container(
                                width: 300,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25.0),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0,0),
                                      blurRadius: 15.0,
                                      color: Color.fromRGBO(7, 8, 14, 0.05),
                                    ),
                                  ],
                                ),
                                child: TextField(
                                  controller: priceController,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 20.0,
                                        horizontal: 20
                                    ),
                                    fillColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: const BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                      borderSide: const BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                      ),
                                    ),
                                    hintText: "Price",
                                  ),
                                ),
                              ),
                              Container(
                                width: 300,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25.0),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0,0),
                                      blurRadius: 15.0,
                                      color: Color.fromRGBO(7, 8, 14, 0.05),
                                    ),
                                  ],
                                ),
                                child: TextField(
                                  controller: imageLinkController,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 20
                                    ),
                                    fillColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: const BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                      borderSide: const BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                      ),
                                    ),
                                    hintText: "Image Link",
                                  ),
                                ),
                              ),
                              Container(
                                width: 300,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25.0),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0,0),
                                      blurRadius: 15.0,
                                      color: Color.fromRGBO(7, 8, 14, 0.05),
                                    ),
                                  ],
                                ),
                                child: TextField(
                                  controller: descController,
                                  keyboardType: TextInputType.multiline,
                                  maxLines: 4,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 20.0
                                    ),
                                    fillColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: const BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                      ),
                                    ),
                                    hintText: "Description",

                                  ),
                                ),
                              ),
                              Container(
                                height: 60,
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0,0),
                                      blurRadius: 15.0,
                                      color: Color.fromRGBO(7, 8, 14, 0.05),
                                    ),
                                  ],
                                ),
                                child:  ElevatedButton(
                                  child: Text("Add",style: TextStyle(fontSize: 18),),
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18.0),
                                      ),
                                    primary: Colors.black,
                                  ),

                                  onPressed: () {
                                    Book.add(bookNameController.text,autherNameController.text,priceController.text,imageLinkController.text,descController.text);
                                    bookNameController.clear();
                                    autherNameController.clear();
                                    priceController.clear();
                                    imageLinkController.clear();
                                    descController.clear();
                                  },
                                ),)
                              
                        ])
                  )

                       ] )
                                  ),
                                ]
                            ),

                         );


  }
}
