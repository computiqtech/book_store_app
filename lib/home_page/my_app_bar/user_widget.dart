import 'package:flutter/material.dart';

class UserName extends StatelessWidget {
  const UserName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Hi, Kasm',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),);
  }
}

class UserImage extends StatelessWidget {
  const UserImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: 50,height: 50,decoration:
    BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.red),);
  }
}