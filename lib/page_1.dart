


import 'package:book_store_app/modle.dart';
import 'package:flutter/material.dart';

import 'add_book.dart';
import 'card.dart';
import 'mybook.dart';
import 'package:get/get.dart';

import 'newbook.dart';

class Page_1 extends StatelessWidget {
  const Page_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    TextEditingController myController11 = TextEditingController();
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Image.asset('Rectangle14.png'),
          Transform.translate(
              offset: const Offset(-65, 0),
              child: const Text(
                'Hi, Hassan!',
                style: TextStyle(fontWeight: FontWeight.w600),
              )),
          const Icon(Icons.more_vert, color: Colors.black),
        ]),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: TextField(
          minLines: 1,
          controller: myController11,
          
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              suffixIcon: const Icon(Icons.search),
              hintText: 'Search',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              )),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(top: 20, left: 15),
        child: Text(
          'Book List',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      Stack(children: [
        Expanded(
          child: Container(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              height: 500,
              child: ListView(
                children: data_book.datas
                    
                    .map((e) => mybook(item: e, context: context))
                    .toList(),
              )),
        ),
        Transform.translate(
          offset: const Offset(75, 400),
          child: Container(
            width: 175,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Image.asset('Vector4.png'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyCart())),
                    child: Image.asset('Vector3.png'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddBook())),
                    child: Image.asset('Vector2.png'),
                  )
                ]),
          ),
        )
      ]),
    ]));
  }
}




