
import 'package:book_store_app/PageThree/TextFieldMain/my_auther_name.dart';
import 'package:book_store_app/PageThree/TextFieldMain/my_book_name.dart';
import 'package:book_store_app/PageThree/TextFieldMain/my_description.dart';
import 'package:book_store_app/PageThree/TextFieldMain/my_image_link.dart';
import 'package:book_store_app/PageThree/TextFieldMain/my_price.dart';
import 'package:book_store_app/main.dart';
import 'package:book_store_app/model.dart';
import 'package:flutter/material.dart';

class MyTextButtonAdd extends StatelessWidget {
  const MyTextButtonAdd({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: (){
          if(conBook.text != '' || conAuther.text != '' || conPrice.text != '' || conImage.text != ''){
            Book.add(conBook.text, conAuther.text, conPrice.text, conImage.text, conDescription.text);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyApp()),
            );
          }else{
            print('no push');
          }

        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 45),
          padding: EdgeInsets.symmetric(horizontal: 135,vertical: 18),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(8),
          ),
          child:const Text('Add',style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),),
        )

    );
  }
}