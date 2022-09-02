
import 'package:book_store_app/main.dart';
import 'package:book_store_app/my_text_field.dart';
import 'package:flutter/material.dart';
import '../modules.dart';
import 'package:get/get.dart';


class Card4 extends StatelessWidget {

  const Card4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xfff0f0f0),
      width: double.maxFinite,
      height: 507,
      child: Expanded(
        child: ListView(
            children: MyBooks.book.map((e) => TextButton(
              onPressed: (){
                e.buy();
                Navigator.push(context, MaterialPageRoute(builder: (context) => BookDetails(myBook: e,)));
              },
              style: TextButton.styleFrom(
                  padding: EdgeInsets.zero
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 35),
                      child: Image.network(e.imageLink,
                        width: 80, height: 130,),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(e.bookName, style: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),),
                        Text(e.bookAuth, style: const TextStyle(color: Colors.black87, fontSize: 12,height: 2),),
                        Text(e.price, style: const TextStyle(color: Colors.black, fontSize: 20,height: 2),),
                        const Stars(),
                      ],
                    )
                  ],
                ),
              ),
            ),).toList()
        ),
      ),
    );
  }
}
