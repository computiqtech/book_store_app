import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.only(right: 10),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('assets/profile.png'), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10)),
        ),
        const Expanded(
          child: Text(
            'Hi,Zahraa!',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        Icon(Icons.more_vert, size: 24, color: Colors.black)
      ],
    );
  }
}
