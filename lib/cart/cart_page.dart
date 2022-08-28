



import 'package:book_store_app/adding_page/add.dart';
import 'package:book_store_app/cart/cart_page_list.dart';
import 'package:book_store_app/page1/default_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Orders  extends StatelessWidget {
  const Orders ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
          ),
          backgroundColor: const Color(0xfff0f0f0),
          elevation: 0,
          toolbarHeight: 10,
        ),
        body: Column(
          children: [
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed:(){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const DefaultPage()));
                },
                child:const Icon(Icons.arrow_back_ios_new, color: Colors.black,)),
            const Icon(Icons.more_vert, color: Colors.black,),
          ]
          ),
            Padding(
              padding: const EdgeInsets.all(32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:const [
                  Text("Cart", style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),),
                ],
              ),
            ),
            Expanded(child: Stack(
              children: [
                const CartListView(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width:227 ,
                    height: 72,
                    margin: const EdgeInsets.only(bottom: 42),
                    //color: Colors.cyan,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                        onPressed:(){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const DefaultPage()));
                        },
                        child: const Icon(Icons.home_filled, color: Colors.black,),
                        ),
                        TextButton(
                            onPressed:(){
                              print("");
                            },
                          child: const Icon(Icons.shopping_cart, color: Colors.black,),),
                        TextButton(
                          onPressed:(){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Add()));
                          },
                          child: const Icon(Icons.add, color: Colors.black,),)
                      ],
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
    );
  }
}
