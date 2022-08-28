import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model.dart';

class SearchField extends StatefulWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  RxString index=''.obs;
  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.start,
      cursorColor: Colors.black,
      onChanged: (x){
        Books.typed.value=x;
      },
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,

        hintText: 'Search.....',
        suffixIcon:  Obx(() {
            return Icon(Icons.search,
              color: Books.typed.value.isEmpty ?Colors.grey : Colors.blue,
              size: 30,);
          }
        ),
        border: OutlineInputBorder(
            borderSide:const BorderSide(
                // width: 317,
                color: Colors.white,
                style: BorderStyle.none
            ),
            borderRadius: BorderRadius.circular(20.0)
        ),
        enabledBorder: OutlineInputBorder(
            borderSide:const BorderSide(
                color: Colors.white,
                style: BorderStyle.none
            ),
            borderRadius: BorderRadius.circular(20.0)
        ),

      ),
    );
  }
}
