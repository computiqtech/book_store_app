import 'package:book_store_app/bookrow.dart';
import 'package:flutter/material.dart';
import 'add_page.dart';
import 'model.dart';
class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: const Icon(Icons.arrow_back_ios_new,color: Colors.black)),
        ),
        actions: const [Padding(
          padding: EdgeInsets.all(10),
          child: Icon(Icons.more_vert,color: Colors.black),
        )],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Cart',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600)),
                  SizedBox(height: 40),
                  Column(
              children: Book.books.where((e)=>!e.isDone.value).map((e) => Bookview(book: e)).toList(),
              ),
                ]
              ),
              Positioned(
                bottom: 0,
                left: 70,
                right: 70,
                child: Container(
                  width: 180,
                  height: 72,
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(22)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(onPressed: (){
                        Navigator.pop(context);
                      },
                          icon: const Icon(Icons.home_outlined,color: Color(0xFF9C9EA8))),
                      IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
                      },
                          icon: const Icon(Icons.shopping_cart_outlined,color: Colors.black)),
                      IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AddPage()));
                      },
                          icon: const Icon(Icons.add,color: Color(0xFF9C9EA8)))
                    ],
                  ),
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}
