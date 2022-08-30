
import 'package:book_store_app/add_book/model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'book_page/my_book.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    Key? key, required this.book,
  }) : super(key: key);

  final Book book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(MyBook(book:book));
      },
      child: Container(
        width: double.maxFinite,
        margin: const EdgeInsets.only(top: 10, right: 5, left: 5),
        padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20,right: 0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: 70,
                height: 100,
                child: Image.network(book.image_link.value)),
            Expanded(
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 0, 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Row(
                            children: [
                              Text(
                              book.name.value,
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black.withOpacity(0.8),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Row(
                            children: [
                              Text(
                                book.auther.value,
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.black54),
                              ),
                            ],
                          ),
                        ), Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Row(
                            children: [
                              Text(
                                '\$'+'${book.price.value}',
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.black54),
                              ),
                            ],
                          ),
                        ),
                         Row(
                           children: [
                             Icon(Icons.star,size: 20,color: Colors.orangeAccent,),
                             Icon(Icons.star,size: 20,color: Colors.orangeAccent),
                             Icon(Icons.star,size: 20,color: Colors.orangeAccent),
                             Icon(Icons.star,size: 20,color: Colors.orangeAccent),
                             Icon(Icons.star,size: 20,color: Colors.grey),
                           ],
                         ),


                      ],
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                  onPressed: (){
                   book.makeAsFav();
                  },
                  child:  Icon( book.isFav==false? Icons.favorite_border : Icons.favorite, color: Colors.red),
              ),
            )
          ],
        ),
      ),
    );
  }
}

