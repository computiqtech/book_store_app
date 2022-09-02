

import 'package:flutter/material.dart';

class AddNameField extends StatelessWidget {
  const AddNameField({
    Key? key,
    required this.nameController,
  }) : super(key: key);

  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return Container(height: 60,
        margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(196,135,198,.2),
                blurRadius: 10,
                offset: Offset(0,.1),
              )
            ]
        ),
        child:  Center(
          child: TextField(
            controller: nameController,
            decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Book Name",
                hintStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.grey)
            ),
          ),
        )
    );
  }
}


class AddAuthorField extends StatelessWidget {
  const AddAuthorField({
    Key? key,
    required this.authorController,
  }) : super(key: key);

  final TextEditingController authorController;

  @override
  Widget build(BuildContext context) {
    return Container(height: 60,
        margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(196,135,198,.2),
                blurRadius: 10,
                offset: Offset(0,.1),
              )
            ]
        ),
        child: Center(
          child: TextField(
            controller: authorController,
            decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Author Name",
                hintStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.grey)
            ),
          ),
        )
    );
  }
}


class AddPriceField extends StatelessWidget {
  const AddPriceField({
    Key? key,
    required this.priceController,
  }) : super(key: key);

  final TextEditingController priceController;

  @override
  Widget build(BuildContext context) {
    return Container(height: 60,
        margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(196,135,198,.2),
                blurRadius: 10,
                offset: Offset(0,.1),
              )
            ]
        ),
        child: Center(
          child: TextField(
            controller: priceController,
            decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Price",
                hintStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.grey)
            ),
          ),
        )
    );
  }
}


class AddRatingField extends StatelessWidget {
  const AddRatingField({
    Key? key,
    required this.rateController,
  }) : super(key: key);

  final TextEditingController rateController;

  @override
  Widget build(BuildContext context) {
    return Container(height: 60,
        margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(196,135,198,.2),
                blurRadius: 10,
                offset: Offset(0,.1),
              )
            ]
        ),
        child: Center(
          child: TextField(
            controller: rateController,
            decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Rating",
                hintStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.grey)
            ),
          ),
        )
    );
  }
}


class AddImageField extends StatelessWidget {
  const AddImageField({
    Key? key,
    required this.imageController,
  }) : super(key: key);

  final TextEditingController imageController;

  @override
  Widget build(BuildContext context) {
    return Container(height: 60,
        margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(196,135,198,.2),
                blurRadius: 10,
                offset: Offset(0,.1),
              )
            ]
        ),
        child: Center(
          child: TextField(
            controller: imageController,
            decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Image link",
                hintStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.grey)
            ),
          ),
        )
    );
  }
}


class AddDescriptionField extends StatelessWidget {
  const AddDescriptionField({
    Key? key,
    required this.descriptionController,
  }) : super(key: key);

  final TextEditingController descriptionController;

  @override
  Widget build(BuildContext context) {
    return Container(height: 100,
        margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(196,135,198,.2),
                blurRadius: 10,
                offset: Offset(0,.1),
              )
            ]
        ),
        child: TextField(
          controller: descriptionController,
          decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: "Description",
              hintStyle: TextStyle(fontSize: 17,
                  fontWeight: FontWeight.w500, color: Colors.grey)
          ),
        )
    );
  }
}