import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
      home:  Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          elevation: 0,
          backgroundColor: const Color(0xffE5E5E5),
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
            statusBarColor: Colors.transparent,
          ),
        ),
        backgroundColor: const Color(0xffE5E5E5),
        body: const MyListBook(),
      ),
    );
  }
}
