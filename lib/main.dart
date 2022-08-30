import 'package:book_store_app/Main_page/mainpage.dart';
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
      title: 'Book Store App',
      theme: ThemeData(primaryColor: Colors.blue),
      home: const MainPage(),
    );
  }
}
