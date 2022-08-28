import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'menu_barr.dart';
import 'card_book.dart';
import 'book_model.dart';
import 'search_field.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'Flutter Code Sample';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: Colors.grey.shade100,
      primarySwatch: Colors.grey),
      home: MyHomePage(),
    );
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
      appBar: MyAppBarHome(),

      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child:Column(
              children:  [
                SizedBox(height: 28),
                Search(),
                SizedBox(height: 28),
                BookListText(),
                SizedBox(height: 28,),
                Expanded(
                  child: Obx(
                    () {
                      return ListView(
                        controller: ScrollController(),
                        children: Book.books.where((e) => e.title.contains(query)).map((e) => CardBook(book: e,)).toList(),
                      );
                    }
                  ),
                )
              ],
            ),
          ),
          MenuBar(c1: Colors.black,flag: 'home',)
        ],
      ),
    );
  }
}

AppBar MyAppBarHome() {
  return AppBar(
    title: Text('Hi, Ali',style: TextStyle(color: Colors.black,fontSize: 14),textAlign: TextAlign.left,),
    backgroundColor: Colors.grey.shade100,
    elevation: 0,
    leading: Padding(
      padding: EdgeInsets.all(7),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image(image: AssetImage('images/user.jpg'),),
      ),
    ),
    actions: const [
      Padding(padding: EdgeInsets.only(right: 20),
        child: Icon(Icons.more_vert_rounded,color: Colors.black,size: 28,),
      )

    ],

  );
}

Align BookListText() {
  return const Align(
    alignment: Alignment.topLeft,
    child: Text('Book List',style:  TextStyle(
        fontSize: 24,fontWeight: FontWeight.w600
    ),),
  );
}






