import 'package:book_store_app/add_book_page/add_page_button.dart';
import 'package:book_store_app/add_book_page/mytextfield.dart';
import 'package:flutter/material.dart';
import 'app_bar_addpage.dart';

class AddBook extends StatefulWidget {
  const AddBook({Key? key,  }) : super(key: key);
  @override
  State<AddBook> createState() => _AddBookState();
}

class _AddBookState extends State<AddBook> {
  final book_name = TextEditingController();
  final author_name = TextEditingController();
  final price = TextEditingController();
  final description = TextEditingController();
  final image_link = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 245, 245, 245),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const AppBaradd(),
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
                      MyTextField(
                        hint: 'Book Name..',
                        mycontroller: book_name,
                      ),
                      MyTextField(
                        hint: 'Author Name..',
                        mycontroller: author_name,
                      ),
                      MyTextField(
                        hint: 'Book Price..',
                        mycontroller: price,
                      ),
                      MyTextField(
                        hint: 'Image Link...',
                        mycontroller: image_link,
                      ),
                      MyTextField(
                        hint: 'Book Description..',
                        mycontroller: description,
                      ),

                    Add_page_buttons(),

                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
