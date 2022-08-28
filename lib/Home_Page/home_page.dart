
import 'package:book_store_app/Home_Page/List.dart';
import 'package:book_store_app/Home_Page/TextSearch.dart';
import 'package:book_store_app/Home_Page/identification.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        backgroundColor: Color(0xffE5E5E5),
        elevation: 0,
      ),
      body: Column(
        children: [
          identification(),
          Search(),
          Container(
            margin: EdgeInsets.only(right: 250,top: 30),
            child: Text("Book List",style:TextStyle(fontSize: 30),),
          ),
          Expanded(
            child: ListHome(),
          )
        ],
      ),
    );
  }
}








