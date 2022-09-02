import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/book_controller.dart';
import '../../../style.dart';
import '../primary_button.dart';
import 'custom_text_field.dart';

class AddNewBook extends StatefulWidget {
  const AddNewBook({Key? key}) : super(key: key);

  @override
  State<AddNewBook> createState() => _AddNewBookState();
}

class _AddNewBookState extends State<AddNewBook> {
  late BookController bookController;
  late TextEditingController nameBookController,
      authorBookController,
      priceBookController,
      ratingBookController,
      imageBookController,
      descripationBookController;

  @override
  void initState() {
    super.initState();
    bookController = Get.find();
    nameBookController = TextEditingController();
    authorBookController = TextEditingController();
    priceBookController = TextEditingController();
    ratingBookController = TextEditingController();
    imageBookController = TextEditingController();
    descripationBookController = TextEditingController();
  }

  @override
  void dispose() {
    nameBookController.dispose();
    authorBookController.dispose();
    priceBookController.dispose();
    ratingBookController.dispose();
    imageBookController.dispose();
    descripationBookController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> fields = [
      {
        'hintText': 'Book Name',
        'controller': nameBookController,
        'isDescription': false,
        'isTextInput': true,
      },
      {
        'hintText': 'Author Name',
        'controller': authorBookController,
        'isDescription': false,
        'isTextInput': true,
      },
      {
        'hintText': 'Price',
        'controller': priceBookController,
        'isDescription': false,
        'isTextInput': false,
      },
      {
        'hintText': 'Rating',
        'controller': ratingBookController,
        'isDescription': false,
        'isTextInput': false,
      },
      {
        'hintText': 'Image link',
        'controller': imageBookController,
        'isDescription': false,
        'isTextInput': true,
      },
      {
        'hintText': 'Descripation',
        'controller': descripationBookController,
        'isDescription': true,
        'isTextInput': true,
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 34, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Add Book', style: headerTextStyle),
              const SizedBox(height: 40),
              ...fields
                  .map(
                    (e) => CustomTextField(
                      hintText: e['hintText'],
                      controller: e['controller'],
                      isDescription: e['isDescription'],
                      isTextInput: e['isTextInput'],
                    ),
                  )
                  .toList(),
            ],
          ),
        ),
        PrimaryButton(
          text: 'Add',
          padding: 45,
          onPressed: () {
            Map<String, String> map = {
              'name': nameBookController.text,
              'author': authorBookController.text,
              'image': imageBookController.text,
              'description': descripationBookController.text,
              'price': priceBookController.text,
              'rating': ratingBookController.text,
            };

            if (bookController.isFieldsEmpty(map)) {
              bookController.addBookSnackBar(context, false);
            } else {
              bookController.addBook(map);
              bookController.addBookSnackBar(context, true);
            }
          },
        ),
      ],
    );
  }
}
