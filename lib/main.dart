
import 'package:flutter/material.dart';

import 'add_book.dart';
import 'main.dart';
import 'page_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        //backgroundColor: Color(0xffE5E5E5),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key, 
  }) : super(key: key);

 

  
  Widget build(BuildContext context) {
    return  const Scaffold(
      body:Page_1() ,
    );
  }
}

