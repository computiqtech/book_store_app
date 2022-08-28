import 'package:book_store_app/model.dart';
import 'package:flutter/material.dart';
import '../my_stars.dart';
import 'rate_buttons.dart';
import 'review_preview_button.dart';

class BookView extends StatelessWidget {
  const BookView({
    Key? key, required this.book,
  }) : super(key: key);
  final Books book;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Column(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 17,bottom: 12),
                  width: 216,
                  height: 320,
                  child:Image(image: NetworkImage(book.image),
                    fit: BoxFit.cover,)
              ),

              Text(book.bookName,
                style: const TextStyle(
                  color: Colors.black,
                  fontFamily:'Poppins',
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(book.auther,
                  style:const TextStyle(
                    color: Colors.black45,
                    fontFamily:'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    MyStars(),
                    Rate(date: '4.0',color: Colors.black,),
                    Rate(date: '/', color: Colors.grey),
                    Rate(date: '5.0', color: Colors.grey)
                  ],
                ),
              ),
              SizedBox(
                width: 319,
                child: Text(book.description,
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily:'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35.0,right: 35.0,bottom: 26.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Buttons(text: 'Preview', icon: Icons.menu,),
                    Buttons(text: 'Reviews', icon: Icons.reviews,),
                  ],
                ),
              ),
              Container(
                width: 319,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(16.0)
                ),
                child: TextButton(
                  onPressed: (){
                    book.makeAsSelect();
                  },
                  child:  Text(r'Buy Now for $ '+book.price,
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily:'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
