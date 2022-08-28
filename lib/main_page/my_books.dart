import 'package:book_store_app/details_page/details_page.dart';
import 'package:book_store_app/model.dart';
import 'package:book_store_app/my_stars.dart';
import 'package:flutter/material.dart';

class MyBooks extends StatelessWidget {
  const MyBooks({
    Key? key,
    required this.book,
  }) : super(key: key);

  final Books book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  BookDetails(book: book,))
        );},
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 36.0,top: 8.0,right: 26.0),
            width: 72,
            height: 106,
            child: Image(image: NetworkImage(book.image),
              fit: BoxFit.cover,)
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(book.bookName,
                style: const TextStyle(
                  color: Colors.black,
                  fontFamily:'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),),
              Text(book.auther,
                style:const TextStyle(
                  color: Colors.black45,
                  fontFamily:'Poppins',
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),),
              Text( r'$'+book.price,
                style:const TextStyle(
                  color: Color(0xff191919),
                  fontFamily:'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),),
            const MyStars(),
            ],),],),
    );
  }
}