
import 'package:book_store_app/add_book_screen.dart';
import 'package:book_store_app/book.dart';
import 'package:book_store_app/cart_screen.dart';
import 'package:book_store_app/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FloatingBar extends StatefulWidget {
  const FloatingBar({Key? key, required this.iconCondition,}) : super(key: key);
  final bool iconCondition;

  @override
  State<FloatingBar> createState() => _FloatingBarState();
}

class _FloatingBarState extends State<FloatingBar> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 220,
        height: 70,
        margin: EdgeInsets.only(bottom: 40),
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xfff9f9f9),
          boxShadow: [
            BoxShadow(
              color: Colors.black38.withOpacity(0.2),
              blurRadius: 20,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
                onTap: (){
                  Book.search.value = "";
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
                child: Icon(Icons.home_outlined, size: 30,color: (widget.iconCondition)? Colors.black : Colors.grey,)
            ),
            GestureDetector(
                onTap: (){
                  Book.search.value = "";
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CartScreen()),

                  );
                },
                child: Icon(Icons.shopping_cart_outlined, size: 26,color: (!widget.iconCondition)? Colors.black : Colors.grey)
            ),
            GestureDetector(
              onTap: (){
                Book.search.value = "";
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddBookScreen()),

                );
              },
                child: Icon(Icons.add, size: 30,color: Colors.grey,)
            ),
          ],
        ),
      ),
    );
  }
}