
import 'package:flutter/material.dart';

class CardOne extends StatelessWidget {
  const CardOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40,height: 40,
          margin: EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset('images/img.png'),
        ),
        Text('Hi,Ali!',style: TextStyle(
            fontSize: 14,
            color: Color.fromRGBO(6, 7, 13, 1),
            fontWeight: FontWeight.bold
        ),),
        Spacer(),
        Icon(Icons.more_vert)
      ],
    );
  }
}