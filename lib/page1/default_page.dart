
import 'package:book_store_app/adding_page/add.dart';
import 'package:book_store_app/cart/cart_page.dart';
import 'package:book_store_app/page1/home_page_list.dart';
import 'package:book_store_app/page1/searchBar.dart';
import 'package:book_store_app/page1/user_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class DefaultPage extends StatefulWidget {
  const DefaultPage({
    Key? key,
  }) : super(key: key);

  @override
  State<DefaultPage> createState() => _DefaultPageState();
}

class _DefaultPageState extends State<DefaultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        backgroundColor: const Color(0xfff0f0f0),
        elevation: 0,
        toolbarHeight: 10,
      ),
      body: Column(
        children: [
          UserWidget(),
          SerachWidget(),
          Padding(
            padding: const EdgeInsets.all(32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children:const [
                Text("Book List", style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),),
              ],
            ),
          ),
          Expanded(
            child: Stack(
               children: [
                 const DefaultListView(),
                 Align(
                   alignment: Alignment.bottomCenter,
                   child: Container(
                     width:227 ,
                     height: 72,
                     margin: const EdgeInsets.only(bottom: 42),
                     //color: Colors.cyan,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(22),
                       color: const Color.fromRGBO(255, 255, 255, 1),
                     ),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         TextButton(onPressed: (){
                           print("");
                         }, child:const Icon(Icons.home_filled, color: Colors.black,),),
                         TextButton(
                           onPressed:(){
                             Navigator.push(context,
                                 MaterialPageRoute(builder: (context) => const Orders()));
                           },
                           child: const Icon(Icons.shopping_cart, color: Colors.black,),),
                         TextButton(
                             onPressed:(){
                               Navigator.push(context,
                                   MaterialPageRoute(builder: (context) =>  Add()));
                             },
                             child: const Icon(Icons.add, color: Colors.black,),)
                       ],
                     ),
                   ),
                 )
               ],
            ),
          )
        ],
      ),
    );
  }
}

