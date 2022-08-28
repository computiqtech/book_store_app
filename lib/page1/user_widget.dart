

import 'package:flutter/material.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            height: 40,
            width: 40,
            margin: const EdgeInsets.only(left: 28, right: 12),
            child:
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child:  Image.network("https://www.diethelmtravel.com/wp-content/uploads/2016/04/bill-gates-wealthiest-person.jpg"))),
        const Text("Hi, Murtada!", style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            fontFamily: "Poppins",
            color: Color.fromRGBO(6, 7, 13, 1)
        ),),
        Spacer(),
        Container(
            margin: const EdgeInsets.only(right: 28),
            child: const Icon(Icons.more_vert, )),
      ],
    );
  }
}