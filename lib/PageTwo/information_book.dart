

import 'package:book_store_app/model.dart';
import 'package:flutter/material.dart';

class InformationBook extends StatelessWidget {
  const InformationBook({
    Key? key, required this.information,
  }) : super(key: key);
final Book information;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Text(
          '${information.nameBook}',
          style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
         Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            '${information.nameAuther}',
            style:const TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.normal),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const[
              Icon(
                Icons.star,
                color: Colors.orange,
                size: 20,
              ),
              Icon(
                Icons.star,
                color: Colors.orange,
                size: 20,
              ),
              Icon(
                Icons.star,
                color: Colors.orange,
                size: 20,
              ),
              Icon(
                Icons.star_half,
                color: Colors.orange,
                size: 20,
              ),
              Icon(
                Icons.star_border_sharp,
                color: Colors.orange,
                size: 20,
              ),
              Text(
                '4.5/',
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              Text(
                '5.0',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              )
            ],
          ),
        ),
      ],
    );
  }
}