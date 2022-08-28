
import 'package:flutter/material.dart';
import 'package:get/get.dart';
TextEditingController s=TextEditingController ();
String query='';
class Search extends StatefulWidget {
  const Search({
    Key? key,
  }) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:  BorderRadius.circular(32),
      ),
      child: TextField(
        controller: s,
        onChanged:(x) {
          query=x;
        },
        decoration: const InputDecoration(
          hintStyle: TextStyle(fontSize: 17),
          hintText: 'Search',
          suffixIcon: Icon(Icons.search),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 20),
        ),

      ),
    );
  }
}