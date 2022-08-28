
import 'package:flutter/cupertino.dart';

class Rate extends StatelessWidget {
  const Rate({
    Key? key, required this.date, required this.color,
  }) : super(key: key);
  final String date;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(date,style: TextStyle(
      color:color,
      fontFamily:'Poppins',
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),);
  }
}