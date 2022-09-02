import 'package:flutter/material.dart';

class Icon1 extends StatelessWidget {
  const Icon1({
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
