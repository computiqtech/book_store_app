import 'package:flutter/material.dart';
import 'navigation_bar_data.dart';

class MyTab extends StatelessWidget{
  const MyTab({Key? key, required this.data}) : super(key: key);
  final TabData data;

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Icon(data.icon,
          color: Colors.black,size: 28,)
      ],
    );
  }
}