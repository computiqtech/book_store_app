
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

import 'modle.dart';

class AddBook extends StatefulWidget {
  const AddBook({Key? key}) : super(key: key);

  @override
  State<AddBook> createState() => _AddBookState();
}

class _AddBookState extends State<AddBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child:
                      Icon(Icons.arrow_back_ios, size: 15, color: Colors.black),
                ),
                Icon(Icons.more_vert, color: Colors.black),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Add Book ',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 45,
            ),
            TextField(
              controller: Field.myController1,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Book Name',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              controller: Field.myController2,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Author Name',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              controller: Field.myController3,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Price',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              controller: Field.myController4,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Image link',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              controller: Field.myController5,
              textInputAction: TextInputAction.send,
              style: const TextStyle(
                  fontSize: 25.0, height: 0, color: Colors.black),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(50),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Description',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            TextButton(
              onPressed: () {
                Field.new_books();
              },
              child: Container(
                  width: 300,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Text(
                    ' Add',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
