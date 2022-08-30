
import 'package:book_store_app/models/myColor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

RxString search=''.obs;

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: MyColor.shadowTextFieldColor,
              spreadRadius: 7,
              blurRadius: 32,
              offset:const Offset(0, 7),
            )
          ]),
      child: TextFormField(
        onChanged: (x){
          search.value=x;
        },
        decoration:  InputDecoration(
          hintText: 'Search...',
          hintStyle: TextStyle(color: MyColor.hintTextFieldColor),
          suffixIcon: Obx(() {
              return Icon(Icons.search,color: search.value.isEmpty? MyColor.hintTextFieldColor: Colors.blue ,);
            }
          ),
          filled: true,
          fillColor: Colors.white,
          disabledBorder:InputBorder.none,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
