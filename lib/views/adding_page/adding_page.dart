import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/book_model.dart';
import '../common_widgets/app_bar.dart';
import 'book_info_textfield.dart';

class BookBuilder extends StatelessWidget {
  BookBuilder({Key? key}) : super(key: key);

  final TextEditingController bookNameController = TextEditingController();
  final TextEditingController authorController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController imgController = TextEditingController();
  final TextEditingController descController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 245, 245, 245),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const MyAppBar(),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text('Add Book',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              BookInfoTextField(
                  controller: bookNameController, text: 'Book Name'),
              BookInfoTextField(
                  controller: authorController, text: 'Author Name'),
              BookInfoTextField(controller: priceController, text: 'Price'),
              BookInfoTextField(controller: imgController, text: 'Image Link'),
              TextField(
                minLines: 4,
                maxLines: 5,
                controller: descController,
                decoration: InputDecoration(
                  hintText: 'Desciption',
                  filled: true,
                  fillColor: Color.fromARGB(235, 252, 252, 252),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                  width: 285,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(22)),
                  child: ElevatedButton(
                    child: Text('Add'),
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22.0),
                        )),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black)),
                    onPressed: () {
                      if ([
                        bookNameController.text,
                        authorController.text,
                        descController.text,
                        priceController.text
                      ].every((element) => element.isNotEmpty)) {
                        Book.addBook(
                            name: bookNameController.text,
                            author: authorController.text,
                            description: descController.text,
                            imgLink: imgController.text,
                            price: priceController.text);
                      }
                      Get.back();
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
