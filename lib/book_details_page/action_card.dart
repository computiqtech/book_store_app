
import 'package:book_store_app/models/myColor.dart';
import 'package:flutter/material.dart';

class ActionOnBook extends StatelessWidget {
  const ActionOnBook({
    Key? key, required this.text, required this.icon,
  }) : super(key: key);

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 150,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow:const [
            BoxShadow(
              color: Color.fromARGB(50, 7, 8, 14),
              spreadRadius: 7,
              blurRadius: 32,
              offset: Offset(0, 7),
            )
          ]),
      child: TextButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,
                color: MyColor.primaryColor),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                text,
                style: TextStyle(
                    color: MyColor.primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}

