import 'package:book_store_app/controllers/add_controller.dart';
import 'package:book_store_app/widgets/big_title.dart';
import 'package:book_store_app/widgets/custom_button.dart';
import 'package:book_store_app/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/custom_text_form_field.dart';

class Body extends GetView<AddController> {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, right: 16, left: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Header(),
            const SizedBox(height: 53),
            const BigTitle(title: 'Add Book'),
            Form(
              key: controller.formKey,
              child: Column(
                children: [
                  const SizedBox(height: 59),
                  CustomFormField(
                    controller: controller.nameController,
                    hintText: "Book Name",
                    maxLines: 1,
                    onSaved: null,
                    onFieldSubmitted: null,
                    keyboardInputType: TextInputType.text,
                  ),
                  const SizedBox(height: 22),
                  CustomFormField(
                    controller: controller.authorController,
                    hintText: "Author Name",
                    maxLines: 1,
                    onSaved: null,
                    onFieldSubmitted: null,
                    keyboardInputType: TextInputType.text,
                  ),
                  const SizedBox(height: 22),
                  CustomFormField(
                    controller: controller.priceController,
                    hintText: "Price",
                    maxLines: 1,
                    onSaved: null,
                    onFieldSubmitted: null,
                    keyboardInputType: TextInputType.text,
                  ),
                  const SizedBox(height: 22),
                  CustomFormField(
                    controller: controller.imageLinkController,
                    hintText: "Image link",
                    maxLines: 1,
                    onSaved: null,
                    onFieldSubmitted: null,
                    keyboardInputType: TextInputType.text,
                  ),
                  const SizedBox(height: 22),
                  CustomFormField(
                    controller: controller.descriptionController,
                    hintText: "Description",
                    maxLines: 8,
                    onSaved: null,
                    onFieldSubmitted: null,
                    keyboardInputType: TextInputType.text,
                  ),
                  const SizedBox(height: 22),
                  BigCustomButton(
                    title: "Add",
                    onTap: () => controller.addBook(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
