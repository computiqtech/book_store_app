import 'package:book_store_app/book_view_list.dart';
import 'package:book_store_app/floating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'profile_row.dart';
import 'search_text_field.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xfffdfdfd),
        appBar: AppBar(
          toolbarHeight: 20,
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.dark
          ),
          backgroundColor: const Color(0xfffdfdfd),
          elevation: 0,
        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProfileRow(),
                  SearchTextField(),
                  Container(
                    margin: EdgeInsets.only(top: 30,bottom: 30),
                    child: Text('Book List',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                      ),),
                  ),
                  BookViewList(allBooks: true,),
                ],
              ),
            ),
            FloatingBar(iconCondition: true,)
          ],
        ),
      ),
    );
  }
}


class Stars extends StatelessWidget {
  const Stars({Key? key, required this.value}) : super(key: key);
  final int value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) {
        if (index < value) {
          return Icon(Icons.star, color: Color(0xffffc628));
        }
        else {
          return Icon(Icons.star, color: Colors.grey.withOpacity(0.2));
        }

      }),
    );
  }
}
