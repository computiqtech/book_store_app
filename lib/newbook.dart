import 'package:book_store_app/modle.dart';
import 'package:flutter/material.dart';


import 'package:get/get.dart';

class NewBook extends StatefulWidget {
  const NewBook({Key? key}) : super(key: key);

  @override
  State<NewBook> createState() => _NewBookState();
}

class _NewBookState extends State<NewBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Obx(() {
        
          return ListView(
              children: add_book.notes
                  .map((e) => Row(children: [
                        TextButton(
                            onPressed: () {},
                            child: Image.network(
                              e.image,
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
                                e.Author_Name,
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Text(e.title,
                                  style: const TextStyle(
                                      color: Color.fromARGB(255, 113, 110, 110),
                                      fontSize: 10)),
                              const SizedBox(
                                height: 16,
                              ),
                              Text(e.Price,
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 10)),
                              const SizedBox(
                                height: 16,
                              ),
                              // ignore: prefer_const_literals_to_create_immutables
                              Text(e.dec,
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 10)),
                              const SizedBox(
                                height: 16,
                              ),
                            ],
                          ),
                        )
                      ]))
                  .toList());
        }),
      ),
    );
  }
}
