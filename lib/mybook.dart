import 'package:book_store_app/view_book.dart';

import 'package:flutter/material.dart';

import 'modle.dart';

Widget mybook({required BuildContext context, required data_book item}) =>
    Row(children: [
      TextButton(
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>InformationBook(item: item,))),
          child: Image.network(
            item.image,
            width: 75,
            height: 100,
          )),
      Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 0,
            ),
            Text(
              item.title,
              style: const TextStyle(color: Colors.black, fontSize: 15),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(item.decration,
                style: const TextStyle(
                    color: Color.fromARGB(255, 113, 110, 110), fontSize: 10)),
            const SizedBox(
              height: 16,
            ),
            Text(item.price,
                style: const TextStyle(color: Colors.black, fontSize: 10)),
            const SizedBox(
              height: 16,
            ),
            // ignore: prefer_const_literals_to_create_immutables
            Row(
              children: [
                Icon(
                  item.icon,
                  color: const Color.fromARGB(255, 230, 230, 82),
                  size: 10,
                ),
                Icon(
                  item.icon,
                  color: const Color.fromARGB(255, 230, 230, 82),
                  size: 10,
                ),
                Icon(
                  item.icon,
                  color: Color.fromARGB(255, 230, 230, 82),
                  size: 10,
                ),
                Icon(
                  item.icon,
                  color: const Color.fromARGB(255, 230, 230, 82),
                  size: 10,
                ),
                Icon(
                  item.icon,
                  color: const Color.fromARGB(255, 242, 242, 240),
                  size: 10,
                ),
              ],
            )
          ],
        ),
      )
    ]);
