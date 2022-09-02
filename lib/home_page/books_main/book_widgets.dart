import 'package:book_store_app/home_page/books_main/rating_widget.dart';
import 'package:flutter/material.dart';


import '../../book_page/book_page_main.dart';
import '../../main.dart';
import 'books_model.dart';

class MyBook extends StatelessWidget{
  const MyBook({Key? key, required this.bookData}) : super(key: key);
  final BookData bookData;


  @override
  Widget build(BuildContext context){
    return GestureDetector(onTap: ()
    {Navigator.push(context, MaterialPageRoute(builder: (context) => BookPage(book: bookData,)));},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(height: 150, width: 21, color: Color(0xffFDFDFD),
          child: Row(
            children: [ClipRRect(borderRadius:BorderRadius.circular(8) ,
                child: Image.network(bookData.bookImage, height: 280,width: 100,)),
              Padding(
                padding: const EdgeInsets.only(left:20),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(bookData.bookName,style: const TextStyle(
                          fontSize: 18,fontWeight: FontWeight.bold

                      ),),
                    ),Text(bookData.bookAuthor,style: const TextStyle(
                      fontSize: 14,
                    ),),

                    Text(bookData.bookPrice,style: TextStyle(
                        fontSize: 16,fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: StarRating(rating: bookData.bookRate,),
                    )
                  ],),
              ),
            ],
          ),),
      ),
    );
  }
}
