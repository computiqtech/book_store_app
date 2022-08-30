import 'package:book_store_app/main_views/listed_books.dart';
import 'package:book_store_app/main_views/navigators.dart';
import 'package:book_store_app/main_views/profile.dart';
import 'package:book_store_app/main_views/search_box.dart';
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
              title('Book List'),
              const ListedBooks()
            ]),
          ),
        ),
      ),
      floatingActionButton: const Navigators(),
    );
  }
}

Padding title(String titles) {
  return Padding(
    padding: const EdgeInsets.only(top: 35),
    child: Text(
      titles,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
    ),
  );
}
