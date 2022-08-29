

import 'package:book_store_app/model.dart';
import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({
    Key? key, required this.description,
  }) : super(key: key);
final Book description;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Stack(
        children: [
          Container(
            width: 330,
            height: 120,
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Text(
                '${description.dscription}',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100, bottom: 36),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    padding:const EdgeInsets.symmetric(
                        horizontal: 31, vertical: 8),
                    child: Row(
                      children: const[
                        Icon(
                          Icons.featured_play_list,
                          size: 20,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Preview',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 31, vertical: 8),
                    child: Row(
                      children:const [
                        Icon(
                          Icons.chat_outlined,
                          size: 20,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Reviews',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}