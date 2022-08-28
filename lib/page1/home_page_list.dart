


import 'package:book_store_app/page1/page_1_model.dart';
import 'package:book_store_app/showing_page/book_page.dart';
import 'package:flutter/material.dart';

class DefaultListView extends StatelessWidget {
  const DefaultListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: BooksList.Books.map((e) => Container(
        padding: const EdgeInsets.only(bottom: 23),
        child: Row(
          children: [
            Container(
                width: 72,
                height: 106,
                margin: const EdgeInsets.only(left: 36),
                child: TextButton(
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>  Show(Bookname: e.Bookname, Author: e.Author, Price: e.Price, imageLink: e.imageLink, Description: e.Description,)));
                    },
                    child: Image.network(e.imageLink))),
            Container(
              height: 106,
              //color: Colors.cyan,
              padding: EdgeInsets.only(left: 26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Text(e.Bookname, style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        fontFamily: 'Poppins'
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 7),
                    child: Text(e.Author, style:const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color.fromRGBO(6, 7, 13, 1),
                        fontFamily: 'Poppins'
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Text("\$${e.Price}", style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        fontFamily: 'Poppins'
                    ),),
                  ),
                  Row(
                    children:const [
                      Icon(Icons.star, color: Color.fromRGBO(255, 196, 31, 1), size: 14,),
                      Icon(Icons.star, color: Color.fromRGBO(255, 196, 31, 1), size: 14,),
                      Icon(Icons.star, color: Color.fromRGBO(255, 196, 31, 1), size: 14,),
                      Icon(Icons.star, color: Color.fromRGBO(255, 196, 31, 1), size: 14,),
                      Icon(Icons.star, color: Color.fromRGBO(237, 237, 239, 1), size: 14,),
                    ],
                  )

                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(
                icon: const Icon(Icons.add_shopping_cart),
                onPressed: (){
                  BooksList(e.Bookname, e.Author, e.Price, e.imageLink, e.Description).add();
                  print(BooksList.cartList);
                },

              )
            ),

          ],
        ),
      )).toList(),

    );
  }
}