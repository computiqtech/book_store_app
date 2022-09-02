import 'package:book_store_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'navigation_bar_data.dart';
import 'navigation_bar_widget.dart';

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 227,
      height: 72,
      decoration:
      BoxDecoration(
          borderRadius:
          BorderRadius.circular(20),
          color: Color(0xffffffff)
      ),child: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: TabData.buttons.map((e) => GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> e.page));
          },child: MyTab(data: e,))).toList(),)),
    );
  }
}