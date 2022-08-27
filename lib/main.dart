
import 'package:flutter/material.dart';

import 'BookPage/book_main.dart';
import 'main_view_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: "/",
      routes: {
        "/":(context) => MainView(),
        "/book": (context) => BookPage()
      },
    );
  }
}
