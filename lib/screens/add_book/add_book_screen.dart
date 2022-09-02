import 'package:book_store_app/screens/home/home_screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../models/my_models.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/my_button.dart';
import '../widgets/my_text_field.dart';
import '../widgets/title_text.dart';

class AddBook extends StatefulWidget {
  const AddBook({Key? key}) : super(key: key);

  @override
  State<AddBook> createState() => _AddBookState();
}

class _AddBookState extends State<AddBook> {
  TextEditingController nameContoroller=TextEditingController();
  TextEditingController authorContoroller=TextEditingController();
  TextEditingController priceContoroller=TextEditingController();
  TextEditingController imageContoroller=TextEditingController();
  TextEditingController desContoroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleText(text: "Add Book"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    MyTextField(
                      hint: 'Book Name',
                      maxLine: 1, controller: nameContoroller,
                    ),
                    MyTextField(
                      hint: 'Author Name',
                      maxLine: 1,
                      controller: authorContoroller,
                    ),
                    MyTextField(
                      hint: 'Price',
                      maxLine: 1,
                      controller: priceContoroller,
                    ),
                    MyTextField(
                      hint: 'Image link',
                      maxLine: 1,
                      controller: imageContoroller,
                    ),
                    MyTextField(
                      hint: 'Description',
                      maxLine: 4,
                      controller: desContoroller,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: MyButton(
                        myOnTap: (){
                          listOfBookCard.add(ModCardOfBook(img: imageContoroller.text, auth: authorContoroller.text, dsc: desContoroller.text, rate: '0', title: nameContoroller.text, prise: priceContoroller.text));
                          Get.to(HomeScreen());
                          print(listOfBookCard.length);

                        },
                        height: MediaQuery.of(context).size.width * 0.15,
                        width: MediaQuery.of(context).size.width,
                        tex: "Add",
                        bgColor: Colors.black,
                        texColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
