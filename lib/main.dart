import 'package:book_store_app/main_views/listed_books.dart';
import 'package:book_store_app/main_views/navigators.dart';
import 'package:book_store_app/main_views/profile.dart';
import 'package:book_store_app/main_views/search_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   systemOverlayStyle: const SystemUiOverlayStyle(
      //       statusBarColor: Colors.transparent,
      //       statusBarIconBrightness: Brightness.dark),
      //   backgroundColor: const Color(0xfff0f0f0),
      //   elevation: 0,
      //   toolbarHeight: 30,
      // ),
      body: Container(
        color: Colors.grey[100],
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(height: 50),
              const Profile(),
              const SearchBox(/*currentText: currentText*/),
              title(),
              const ListedBooks()
            ]),
          ),
        ),
      ),
      floatingActionButton: const Navigators(),
    );
  }
}

Padding title() {
  return const Padding(
    padding: EdgeInsets.only(top: 40),
    child: Text(
      'Book List',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
    ),
  );
}
