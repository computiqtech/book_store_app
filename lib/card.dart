

import 'package:book_store_app/modle.dart';
import 'package:flutter/material.dart';

import 'mybook.dart';

class MyCart extends StatelessWidget {
  const MyCart({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
              padding: const EdgeInsets.only(left: 10),
              child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back_ios_new,size: 15, color: Colors.black)),
        ),
        const Padding(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.more_vert,size: 15, color: Colors.black),)
            ],
          ),

          Center(
              child: Padding(
            padding: const EdgeInsets.all(35),
            child: Stack(children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Text('Cart',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
                    
                SizedBox(height: 40),
                Column(
                  children: data_book.datas
                      .where((e) => !e.isDone.value)
                      .map((e) => mybook(item: e, context: context))
                      .toList(),
                ),
              ]),
            ]),
          )),
        ],
      ),
    );
  }
}
