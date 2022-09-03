import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:book_store_app/model/model.dart';

// the screen for color of screen
int screen = 1 ;

// build the botton

Widget buildbotton(
    {Alignment ali = Alignment.center,
    double Width = double.infinity,
    double Hieght = 40.0,
    Color colore = Colors.black,
    double border = 10.0,
    String text = "Add",
    Color textcolor = Colors.white,
    FontWeight fontw = FontWeight.bold,
    double fontS = 20.0,
    required VoidCallback onPressed}) {
  return Container(
    margin: EdgeInsets.only(top: 10),
    child: MaterialButton(
      padding: EdgeInsets.all(0),
      onPressed: onPressed,
      child: Container(
        margin: EdgeInsets.all(0),
        alignment: ali,
        width: Width,
        height: Hieght,
        decoration: BoxDecoration(
            color: colore, borderRadius: BorderRadius.circular(border)),
        child: Text(
          "${text}",
          style:
              TextStyle(color: textcolor, fontWeight: fontw, fontSize: fontS),
        ),
      ),
    ),
  );
}

// build three button center

Widget buildbcenter({
  double padd = 15.0,
  double mabot = 29.0,
  double radiu = 20.0,
  double Width = 175,
  required VoidCallback onPressed,
  required VoidCallback onPressed2,
  required VoidCallback onPressed3,
}) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      padding: EdgeInsets.all(padd),
      margin: EdgeInsets.only(bottom: mabot),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 240, 238, 238),
          borderRadius: BorderRadius.circular(radiu)),
      width: Width,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        GestureDetector(
          onTap: onPressed,
          child: Icon(Icons.home_outlined , color: screen == 1 ? Colors.black : Colors.grey,),
        ),
        GestureDetector(
          onTap: onPressed2,
          child: Icon(
            Icons.shopping_bag_outlined,
            color: screen == 2 ? Colors.black : Colors.grey,
          ),
        ),
        GestureDetector(
          onTap: onPressed3,
          child: Icon(Icons.add_outlined,
            color: screen == 3 ? Colors.black : Colors.grey,
          ),
        ),
      ]),
    ),
  );
}

//build star
Widget buildthestar() {
  return Row(
    children: [
      for (int i = 0; i < 5; i++)
        Icon(
          Icons.star,
          size: 15,
          color: Colors.amber,
        ),
      SizedBox(
        width: 10,
      ),
      Text(
        "5/5",
        style: TextStyle(color: Colors.grey),
      )
    ],
  );
}

// normal button
Widget buildnormal({
  IconData ic = Icons.list,
  String text = "Preview",
}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
    ),
    child: Row(children: [
      Icon(ic),
      SizedBox(
        width: 5,
      ),
      Text(
        "${text}",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      )
    ]),
  );
}
