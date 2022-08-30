import 'package:book_store_app/add_book/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'list.dart';
import 'nav_buttons.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body:
      Stack(
        children: [
          Column(children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 70, 0, 0),
                  child:
                  Image.asset('Assets/Images/Ali.png'),),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 70, 0, 0),
                  child:
                  Text('Hi, Ali!',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),)
                  ,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(225, 70, 0, 0),
                  child:
                  Icon(Icons.more_vert)
                  ,),
              ],),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(

                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                    horizontal: 20
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  hintText: "     Search...",
                  suffixIcon: const Icon(Icons.search, size: 30,),
                ),
                onTap: (){
                  //Book.books.where((e) => e.name.contains(searchController));
                  }
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 0, 0, 39),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child:
                  Text('Book List',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),)
              ),
            ),
            Expanded(
            child: CardsList(),
          ),
             ]),
          NavButtons()
        ],
      )
    );
  }
}
