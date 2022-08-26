import 'dart:html';

import 'package:flutter/material.dart';

class MyIcons extends StatelessWidget {
  const MyIcons({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: Colors.grey,
      size: 30,
    );
  }
}
