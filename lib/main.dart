
import 'package:flutter/material.dart';
import 'home_page/books_main/books_list_bulder.dart';
import 'home_page/my_app_bar/app_bar_footer.dart';
import 'home_page/my_app_bar/search_bar.dart';
import 'home_page/my_app_bar/user_widget.dart';
import 'home_page/navigation_bar/navigation_bar_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xffFDFDFD),
        body:Stack(
          children:[
            Column(
            children: [
              Padding(
              padding: const EdgeInsets.only(top: 50),
                child: Row(
                children: const [
                  SizedBox(width: 10,),
                  UserImage(),
                  SizedBox(width: 10,),
                  UserName(),
                  SizedBox(width: 240,),
                  Icon(Icons.more_vert_sharp)
                ],),
              ),
              const MySearchBar(),
              const SizedBox(height: 30,),
              const BookListText(),
              const SizedBox(height: 10,),
              const MyBooksCard(),
            ],
             ),const Align(alignment: Alignment.bottomCenter,child: Padding(
              padding: EdgeInsets.only(bottom: 42.0),
              child:MyNavigationBar()
          ),
          )]
        ),
      ),
    );
  }
}






































































