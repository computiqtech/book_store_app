
import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  const Card1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
            onPressed: (){},
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: const Size(0, 0),
            ),
            child: const Icon(Icons.person_rounded, size: 40, color: Colors.black,)),
        const Text('   Hi, Ali!', style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),), const Spacer(),
        const Icon(Icons.more_vert, size: 35,),
      ],
    );
  }
}