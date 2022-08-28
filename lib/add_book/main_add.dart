import 'package:flutter/material.dart';
import 'package:book_store_app/home_page/menu_barr.dart';
import 'addBook_body.dart';
class AddBook extends StatefulWidget {
  const AddBook({Key? key}) : super(key: key);
  @override
  State<AddBook> createState() => _Add_bookState();
}
TextEditingController bookNameC=TextEditingController();
TextEditingController authorC=TextEditingController();
TextEditingController pricC=TextEditingController();
TextEditingController imgPathC=TextEditingController();
TextEditingController descripC=TextEditingController();
class _Add_bookState extends State<AddBook> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.grey),
    home: Scaffold(
      appBar: MyAppBar(context),
      body: Stack(
        children: const [
          AddBook_body(),
          MenuBar(c3: Colors.black,flag: 'add',)
        ],
      ),
    )
    );
  }
  
}

AppBar MyAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.grey.shade100,
    elevation: 0,
    leading: TextButton(onPressed: () {
      Navigator.pop(context);
    },
      child:const Icon(Icons.arrow_back,color: Colors.black,) ,),
    actions: const [
      Padding(padding: EdgeInsets.only(right: 20),
        child: Icon(Icons.more_vert_rounded,color: Colors.black,size: 28,),
      )

    ],

  );
}