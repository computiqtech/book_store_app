import 'package:flutter/material.dart';

import '../home_page/books_main/books_model.dart';
import 'add_butoon.dart';
import 'my_text_fields.dart';

class AddPage extends StatelessWidget {
  AddPage({Key? key,}) : super(key: key);

  TextEditingController nameController =  TextEditingController();
  TextEditingController authorController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController rateController = TextEditingController();
  TextEditingController imageController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  BookData? bookData;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white.withOpacity(0.1),
          elevation: 0,
          leading: IconButton(onPressed: (){Navigator.pop(context);},
            icon:const Icon(Icons.arrow_back_ios_new_sharp,
              color: Colors.black, size: 25,),),
          actions: const [
            Icon(Icons.more_vert_sharp, color: Colors.black, size: 25,)
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Add Book',style: TextStyle(fontSize:
                  24,fontWeight: FontWeight.bold),),
                  AddNameField(nameController: nameController),
                  AddAuthorField(authorController: authorController),
                  AddPriceField(priceController: priceController),
                  AddRatingField(rateController: rateController),
                  AddImageField(imageController: imageController),
                  AddDescriptionField(descriptionController: descriptionController),
                  AddBookButton(nameController: nameController,
                      authorController: authorController,
                      priceController: priceController,
                      rateController: rateController,
                      imageController: imageController,
                      descriptionController: descriptionController)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }}