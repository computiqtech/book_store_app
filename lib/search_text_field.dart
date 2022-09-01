
import 'package:book_store_app/book.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({Key? key,}) : super(key: key);

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black38.withOpacity(0.2),
            blurRadius: 20,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child:  TextField(

        onChanged: (x){
          Book.search.value = x;
        },
        controller: TextEditingController(),
        style: TextStyle(fontSize: 18),
        decoration: InputDecoration(
          border: UnderlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(8)),
          hintText: 'Search ..',
          suffixIcon: Icon(Icons.search,size: 30,color: Color(0xffa1a4b5),),
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }
}
