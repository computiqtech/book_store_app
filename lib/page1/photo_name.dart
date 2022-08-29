import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class page1_up extends StatelessWidget {
  const page1_up({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  width: 50,
                  height: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15), // Image border
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(100), // Image radius
                      child: Image.network(
                          'https://i.ibb.co/sqRnWcX/tamara-bellis-e-DVQw-VMLMg-U-unsplash.jpg',
                          fit: BoxFit.cover),
                    ),
                  )),
              SizedBox(
                width: 10,
              ),
              Text(
                "Hi, Ibraheem!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
          Icon(
            Icons.more_vert,
            size: 30,
          )
        ],
      ),
    );
  }
}
