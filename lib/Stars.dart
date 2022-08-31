import 'package:flutter/material.dart';
class Stars extends StatelessWidget {
  const Stars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Icon(Icons.star, size: 14,color: Colors.yellow),
        Icon(Icons.star, size: 14,color: Colors.yellow),
        Icon(Icons.star, size: 14,color: Colors.yellow),
        Icon(Icons.star, size: 14,color: Colors.yellow),
        Icon(Icons.star, size: 14,color: Colors.grey)
      ],
    );
  }
}
