import 'package:book_store_app/buy_book/nav_buttons.dart';
import 'package:book_store_app/saved/saved_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../home_page/list.dart';
import '../home_page/nav_buttons.dart';
import 'bought_list.dart';


class ShoppingCart extends StatefulWidget {
  const ShoppingCart({
    Key? key,
  }) : super(key: key);

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Column(children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(18, 70, 0, 0),
                    child:
                    Image.asset('Assets/Images/Ali.png'),),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(18, 70, 0, 0),
                    child:
                    Text('Hi, Ali!',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),)
                    ,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(225, 70, 0, 0),
                    child:
                    Icon(Icons.more_vert)
                    ,),
                ],),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 20, 0, 39),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child:
                    Text('Cart',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),)
                ),
              ),
              Expanded(
                child: BoughtList(),
              ),
            ],),
            NavButtonsSopping()
          ],
        )
    );
  }
}
