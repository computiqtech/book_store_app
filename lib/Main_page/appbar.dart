import 'package:flutter/material.dart';

class MYAppBar extends StatelessWidget {
  const MYAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('assets/images/picscreen1.1.jpg'), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10)),
        ),
        const Expanded(
          child: Text(
            'Hi,Fanar!',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        const Icon(Icons.more_vert, size: 24, color: Colors.black)
      ],
    );
  }
}
