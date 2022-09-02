
import 'package:book_store_app/screens/widgets/custom_app_bar.dart';
import 'package:book_store_app/screens/widgets/my_button.dart';
import 'package:book_store_app/screens/widgets/start_rate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'widgets/card_of_book.dart';

class DetaisBook extends StatefulWidget {
  String img;
  String title;
  String auth;
  String prise;
  String rate;
  String dsc;
  DetaisBook({
    Key? key,
    required this.img,
    required this.title,
    required this.auth,
    required this.prise,
    required this.rate,
    required this.dsc,
  }) : super(key: key);



  @override
  State<DetaisBook> createState() => _DetaisBookState();
}

class _DetaisBookState extends State<DetaisBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.network(widget.img,height: MediaQuery.of(context).size.height*0.4,)),
           Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Text(
                widget.title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ),
             Text(
              widget.auth,
              style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 14),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  StartRate(rate:5),
                  SizedBox(width: 8,),
                  Text(
                    '5.0',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  Text(
                    '/5.0',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                ],
              ),
            ),
            Text(
              widget.dsc,
               style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 14),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(icon:"assets/icons/list_icon.svg",height:MediaQuery.of(context).size.width*0.12,width: MediaQuery.of(context).size.width*0.4,tex: "Preview",bgColor: Colors.white,),
                SizedBox(width: 16,),
                MyButton(icon: "assets/icons/chat_icon.svg",height: MediaQuery.of(context).size.width*0.12,width: MediaQuery.of(context).size.width*0.4,tex: "Reviews",bgColor: Colors.white,),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: MyButton(height: MediaQuery.of(context).size.width*0.15,width: MediaQuery.of(context).size.width,tex: "Buy Now for \$${widget.prise}",bgColor: Colors.black,texColor: Colors.white,),
            ),


          ],
        ),
      ),
    );
  }
}


