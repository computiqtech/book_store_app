
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartRate extends StatelessWidget {
  const StartRate({
    Key? key,
    required this.rate,
  }) : super(key: key);

  final int rate;

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        for (int i=0; i<rate; i++)
          const Icon(
            Icons.star,
            color: Color(0xffFFD700),
            size: 14,
          ),
        for (int i=5-rate; i>0; i--)
          const Icon(
            Icons.star,
            color: Colors.grey,
            size: 14,
          ),
      ],
    );
  }
}