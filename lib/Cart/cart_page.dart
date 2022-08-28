
import 'package:book_store_app/Cart/CartList.dart';
import 'package:book_store_app/Cart/NavigationCard.dart';
import 'package:book_store_app/Details_Book/DetailsBook.dart';
import 'package:book_store_app/Home_Page/ContainerBook.dart';
import 'package:book_store_app/Home_Page/Navigation_Bar.dart';
import 'package:book_store_app/data/DataBook.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CatPage extends StatefulWidget {
  const CatPage({Key? key}) : super(key: key);

  @override
  State<CatPage> createState() => _CatPageState();
}

class _CatPageState extends State<CatPage> {
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
      body: Column(
        children: [
          SizedBox(height: 70,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("     Cart",style: TextStyle(fontSize: 30),),
            ],
          ),
          ListCart(),
          NavigationCard(),
          SizedBox(height: 30,)
        ],
      ),
    );
  }
}


