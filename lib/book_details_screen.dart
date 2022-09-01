import 'package:book_store_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'book.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({Key? key, required this.book}) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffdfdfd),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.of(context).pop(),
        ),
        iconTheme: const IconThemeData(
        ),
        actions: const [
          Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.more_vert,size: 30,))
        ],
        toolbarHeight: 100,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark
        ),
        backgroundColor: const Color(0xfffdfdfd),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(

          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                width: 200,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: book.bookImage,fit: BoxFit.fill)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 10),
              child: Text("${book.bookName}",
                style: TextStyle(
                    color: Color(0xff535458),
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text("${book.authorName}",
                style: TextStyle(
                    color: Color(0xffc8c8c9)
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              width: 160,
                child: Row(
                  children: [
                    Stars(value: book.rate,),
                    SizedBox(width: 10,),
                    Text("${book.rate}",style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("/5",style: TextStyle(color: Colors.grey),)
                  ],
                )
            ),
            Container(
              width: double.maxFinite,
              height: 100,
              child: Text("${book.description}",
                style: TextStyle(
                  color: Color(0xff9e9ea0)
                ),
              ),
            ),
            Container(
              height: 150,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xfff9f9f9),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38.withOpacity(0.2),
                              blurRadius: 20,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.view_list,size: 30,),
                            Text("Preview",style: TextStyle(fontWeight: FontWeight.bold),)

                          ],
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xfff9f9f9),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38.withOpacity(0.2),
                              blurRadius: 20,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.reviews_rounded,size: 30,),
                            Text("Review",style: TextStyle(fontWeight: FontWeight.bold),)

                          ],
                        ),
                      ),

                    ],
                  ),
                  GestureDetector(
                    onTap: (){
                      book.isBought = true;
                      Navigator.pop(context);

                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 30),
                      alignment: Alignment.center,
                      width: 320,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Text(r"Buy Now for $""${book.price}",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18
                        ),
                      ),
                    ),
                  )
                ],

              ),
            )
          ],
        ),
      ),
    );
  }
}


/*
*
          margin: EdgeInsets.only(right: 20),
          width: 300,
          height: 350,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: book.bookImage,fit: BoxFit.fill)
          ),

* */