
import 'package:book_store_app/Details_Book/DetailsBook.dart';
import 'package:book_store_app/Home_Page/ContainerBook.dart';
import 'package:book_store_app/data/DataBook.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Search extends StatelessWidget {
  const Search({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final TextEditingController controllersearh=TextEditingController();

    return Container(
      padding: EdgeInsets.only(top: 30),
      width: 350,
      height: 100,
      child: TextField(
        controller: controllersearh,
        style: const TextStyle(fontSize: 20),
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white.withOpacity(0.1),
          hintText: 'Search...',
          suffixIcon: TextButton(onPressed: (){},
              child: Icon(Icons.search,color: Colors.black,)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}