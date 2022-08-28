import 'package:flutter/material.dart';
import 'main_page/main_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        canvasColor:Colors.white60,

    ),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body: MyListBook(),
      ),
    );
  }
}
