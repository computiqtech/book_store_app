import 'package:book_store_app/home_page/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../add_book/model.dart';


class MyBook extends StatelessWidget {
  MyBook({Key? key, required this.book}) : super(key: key);
  final Book book;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body:Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 0,20),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                        Icons.arrow_back_ios, color: Colors.black, size: 30),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                  ) ,
                  SizedBox(width: 265,),
                  IconButton(
                    icon: Icon(
                        Icons.more_vert, color: Colors.black, size: 30),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                  )
                ],),
            ),
            Container(
              height: 300,
                child: Image.network(book.image_link.value)),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Text(
                        book.name.value,
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.black.withOpacity(0.8),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        book.auther.value,
                        style: const TextStyle(
                            fontSize: 16, color: Colors.black54),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star,size: 20,color: Colors.orangeAccent,),
                          Icon(Icons.star,size: 20,color: Colors.orangeAccent),
                          Icon(Icons.star,size: 20,color: Colors.orangeAccent),
                          Icon(Icons.star,size: 20,color: Colors.orangeAccent),
                          Icon(Icons.star,size: 20,color: Colors.grey),
                          Text('4.5 / 5.0')
                        ],
                      ),
                      Expanded(
                        child: ListView(
                             children: [Padding(
                               padding: const EdgeInsets.all(20),
                               child: Text(
                                 book.desc.value,
                                 style: const TextStyle(
                                     fontSize: 16, color: Colors.black54),
                               ),
                             ),],
                        ),
                      ),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Container(
    width: 150,
    height: 50,
    margin: EdgeInsets.all(10),
    child: ElevatedButton(
    child:Row(
    children: [
    Icon(Icons.line_weight, color: Colors.black,),
    SizedBox(width: 15,),
    Text("Preview",style: TextStyle(fontSize: 18,color: Colors.black),),]),
    style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(18.0),
    ),
    primary: Colors.white,
    ),
    onPressed:(){},
    ),
    ),
    Container(
    width: 150,
    height: 50,
    margin: EdgeInsets.all(10),
    child: ElevatedButton(
    child:Row(
    children: [
    Icon(Icons.reviews_outlined, color: Colors.black,),
    SizedBox(width: 15,),
    Text("Reviews",style: TextStyle(fontSize: 18,color: Colors.black),),]),
    style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(18.0),
    ),
    primary: Colors.white,
    ),
    onPressed:(){},
    ),
    )
    ],
    ),
    SizedBox(height: 20,),
    ElevatedButton(
    child: Container(
    width: 290,
    height: 60,
    alignment: Alignment.center,
    child: Text("Buy Now for \$"+"${book.price.value}",style: TextStyle(fontSize: 20),),
    ),
    style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(18.0),
    ),
    primary: Colors.black,
    ),
    onPressed:(){
      book.bought();
    },
    )
                        ] )

                  ),
                ),
              ),
]
    )

    );


  }
}
