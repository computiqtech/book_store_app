import 'package:flutter/material.dart';

import '../app_bars/the_app_bar2.dart';
import '../model.dart';
import '../my_text_fields/the_text_field2.dart';

class AddBook extends StatefulWidget {
  const AddBook({
    Key? key,
  }) : super(key: key);

  @override
  State<AddBook> createState() => _AddBookState();
}

class _AddBookState extends State<AddBook> {
  final bookName = TextEditingController();
  final authorName = TextEditingController();
  final price = TextEditingController();
  final description = TextEditingController();
  final imageLink = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 245, 245, 245),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const MyAppBar2(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Text(
                          'Add Book',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      MyTextField2(
                        hint: 'Book Name..',
                        maxlines: 1,
                        mycontroller: bookName,
                      ),
                      MyTextField2(
                        hint: 'Author Name..',
                        maxlines: 1,
                        mycontroller: authorName,
                      ),
                      MyTextField2(
                        hint: 'Book Price..',
                        maxlines: 1,
                        mycontroller: price,
                      ),
                      MyTextField2(
                        hint: 'Image Link..',
                        maxlines: 1,
                        mycontroller: imageLink,
                      ),
                      MyTextField2(
                        hint: 'Book Description..',
                        maxlines: 5,
                        mycontroller: description,
                      ),
                      TextButton(
                        onPressed: () {
                          Book book = Book(
                            bookName.text,
                            authorName.text,
                            description.text,
                            price.text,
                            imageLink.text,
                          );
                          Book.books.add(book);
                        },
                        child: Container(
                          width: 335,
                          height: 60,
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black),
                          child: const Text(
                            'Add',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),),
    );
  }
}
