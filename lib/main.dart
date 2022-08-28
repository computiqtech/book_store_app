
import 'package:book_store_app/page1/default_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'app_store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DefaultPage(),
    );
  }
}



