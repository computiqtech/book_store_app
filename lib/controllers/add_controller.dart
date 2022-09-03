import 'package:book_store_app/data/data_source.dart';
import 'package:book_store_app/data/models/book.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddController extends GetxController {
  late final GlobalKey<FormState> formKey;
  late final TextEditingController nameController;
  late final TextEditingController authorController;
  late final TextEditingController priceController;
  late final TextEditingController imageLinkController;
  late final TextEditingController descriptionController;

  @override
  void onInit() {
    super.onInit();
    formKey = GlobalKey<FormState>();
    nameController = TextEditingController();
    authorController = TextEditingController();
    priceController = TextEditingController();
    imageLinkController = TextEditingController();
    descriptionController = TextEditingController();
  }

  @override
  void onClose() {
    nameController.dispose();
    authorController.dispose();
    priceController.dispose();
    imageLinkController.dispose();
    descriptionController.dispose();
  }

  addBook() {
    if (formKey.currentState!.validate()) {
      DataSource.localBooks.add(
        Book(
          title: nameController.text,
          author: authorController.text,
          price: double.parse(priceController.text),
          cover: imageLinkController.text,
          description: descriptionController.text,
        ),
      );
      Get.closeCurrentSnackbar();
      Get.snackbar('Book has been added successfully', '');
    }
  }
}
