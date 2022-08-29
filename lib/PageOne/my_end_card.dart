
import 'package:book_store_app/PageOne/my_list_view.dart';
import 'package:book_store_app/PageOne/title_of_book.dart';
import 'package:book_store_app/PageThree/page_three_main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyEndCard extends StatelessWidget {
  const MyEndCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,height: 72,
      margin: EdgeInsets.only(top: 410,bottom: 38,left: 65),
      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
      decoration: BoxDecoration(
        boxShadow: const[
          BoxShadow(
            color: Colors.white,
            spreadRadius: 40,
            blurRadius: 50,
            offset: Offset(0, 60), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(20),
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
      child: Obx(() {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){
                Title0fBook(name: 'Book List',);
                MyListView.controller.animateToPage(0, duration: Duration(milliseconds: 500), curve: Curves.linear);
              }, icon: Icon(Icons.home_outlined,color: MyListView.currentPage == 0 ? Colors.blue : Colors.grey),),


              IconButton(onPressed: (){
                Title0fBook(name: 'Card',);
                MyListView.controller.animateToPage(1, duration: Duration(milliseconds: 500), curve: Curves.linear);
              }, icon: Icon(Icons.shopping_cart_outlined,color: MyListView.currentPage == 1 ? Colors.blue : Colors.grey),),
              IconButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PageThree()),
                );
              }, icon: Icon(Icons.add,color: Colors.grey,),),
            ],
          );
        }
      ),
    );
  }
}