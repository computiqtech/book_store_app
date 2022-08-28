
import 'package:book_store_app/Details_Book/CartBotton.dart';
import 'package:book_store_app/Details_Book/ImageBook.dart';
import 'package:book_store_app/Details_Book/descrption.dart';
import 'package:flutter/material.dart';

import '../data/DataBook.dart';

class Details extends StatelessWidget {
  const Details({Key? key, required this.data}) : super(key: key);
  final DataBook data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        backgroundColor: Color(0xffE5E5E5),
        elevation: 0,
        leading: TextButton(onPressed: (){
          Navigator.pop(context);
        },child: Container(
            margin: EdgeInsets.only(left: 30,top: 20),
            child: Icon(Icons.arrow_back_ios,color: Colors.black,)),),
        actions: [
          TextButton(onPressed: (){}, child: Container(
              margin: EdgeInsets.only(right: 30,top: 20),
              child: Icon(Icons.more_vert,color: Colors.black,)))
        ],
      ),
      body:ListView(
        children: [
          SizedBox(height: 30,),
          ImageBook(data: data),
          SizedBox(height: 20,),
          Container(
            height: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(data.name,style: TextStyle(fontSize: 30),),
                Text(data.auther_name,style: TextStyle(color: Colors.black.withOpacity(0.8)),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star,color: Colors.amber,),
                    Icon(Icons.star,color: Colors.amber,),
                    Icon(Icons.star,color: Colors.amber,),
                    Icon(Icons.star,color: Colors.white,),
                    Text("  4.5/5"),
                  ],
                )
              ],
            ),
          ),
          descrption(data: data),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 50),
              child: Row(
                children: [
                  Icon(Icons.sort,size: 30,),
                  Text("Preview",style: TextStyle(fontSize: 15),),
                  Spacer(),
                  Icon(Icons.chat_outlined,size: 28,),
                  Text("Peviews",style: TextStyle(fontSize: 15),)

                ],
              ),
            ),
          ),
          CartBotton(data: data)

        ],
      )
    );
  }
}






