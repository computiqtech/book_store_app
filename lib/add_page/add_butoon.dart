import 'package:flutter/material.dart';

import '../home_page/books_main/books_model.dart';

class AddBookButton extends StatelessWidget {
  const AddBookButton({
    Key? key,
    required this.nameController,
    required this.authorController,
    required this.priceController,
    required this.rateController,
    required this.imageController,
    required this.descriptionController,
  }) : super(key: key);

  final TextEditingController nameController;
  final TextEditingController authorController;
  final TextEditingController priceController;
  final TextEditingController rateController;
  final TextEditingController imageController;
  final TextEditingController descriptionController;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(onTap:(){BookData.add(
          nameController.text,
          authorController.text,
          priceController.text,
          double.parse(rateController.text),
          imageController.text,
          descriptionController.text);

      nameController.clear();
      authorController.clear();
      priceController.clear();
      rateController.clear();
      imageController.clear();
      descriptionController.clear();} ,
        child: Container(width: 319,height: 60,
          margin: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),color: Colors.black
          ),child: const Center(
            child: Text('Add Book',
              style: TextStyle(color: Colors.white,
                  fontWeight:FontWeight.bold,
                  fontSize: 16),),
          ),),
      ),
    );
  }
}