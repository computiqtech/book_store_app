import 'package:book_store_app/page1/text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:book_store_app/model.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../page1/Title_OF_list.dart';
import '../page1/main_page1.dart';
import 'Add_button.dart';
import 'App_bar.dart';

class Add_books extends StatefulWidget {
  const Add_books({Key? key}) : super(key: key);

  @override
  State<Add_books> createState() => _Add_booksState();
}

final TextEditingController book_name = TextEditingController();
final TextEditingController auther_name = TextEditingController();
final TextEditingController price = TextEditingController();
final TextEditingController link = TextEditingController();
final TextEditingController Description = TextEditingController();
late final RxInt booksid1 = 10 as RxInt;

class _Add_booksState extends State<Add_books> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFEFEF),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 55),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.to(Main_page1(),
                          duration: Duration(
                              milliseconds:
                                  200), //duration of transitions, default 1 sec
                          transition: Transition.fadeIn);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_vert,
                      size: 30,
                    ),
                  ),
                ],
              ),
              const Title_OF_list(
                title: "Add Book",
              ),
              MyInputField(
                MyController: book_name,
                text: "Book Name",
                width: 350,
                height: 60,
                ICON: null,
                type: TextInputType.text,
              ),
              MyInputField(
                MyController: auther_name,
                text: "Author Name",
                width: 350,
                height: 60,
                ICON: null,
                type: TextInputType.text,
              ),
              MyInputField(
                MyController: price,
                text: "Price",
                width: 350,
                height: 60,
                ICON: null,
                type: TextInputType.text,
              ),
              MyInputField(
                MyController: link,
                text: "Image link",
                width: 350,
                height: 60,
                ICON: null,
                type: TextInputType.text,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 5),
                child: TextField(
                  style: const TextStyle(fontSize: 20, height: 1),
                  keyboardType: TextInputType.text,
                  controller: Description,
                  onChanged: (x) {},
                  maxLines: 5,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Description',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              Add_button()
            ],
          ),
        ),
      ),
    );
  }
}
