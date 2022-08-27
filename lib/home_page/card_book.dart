
import 'package:book_store_app/book_page/the_book.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CardBook extends StatefulWidget {
  final String title,author,price,imgPath;
  const CardBook({Key? key, required this.title, required this.author, required this.price, required this.imgPath}) : super(key: key);

  @override
  State<CardBook> createState() => _CardBookState();
}

class _CardBookState extends State<CardBook> {

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.only(bottom: 24),
      child: InkWell(
        onTap: (){
          Get.to(BookPage());
        },
        child: Row(
          children: [
             ClipRRect(
                borderRadius: BorderRadius.only(topRight: Radius.circular(8),bottomRight: Radius.circular(8)),
                child: Image(image: AssetImage(widget.imgPath),width: 72)
            ),
            SizedBox(width: 28,),
            Container(
              height: 95,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(widget.title,style: const TextStyle(
                      fontSize: 16,fontWeight: FontWeight.w600
                  ),),

                  Text(widget.author,style: const TextStyle(
                      fontSize: 12,fontWeight: FontWeight.w500,color: Colors.grey
                  ),),
                  Text('\$${widget.price}',style: const TextStyle(
                      fontSize: 14,fontWeight: FontWeight.w600
                  ),),
                  Row(
                    children: [
                      Rate(),
                      Rate(),Rate(),Rate(),Rate(),

                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
Icon Rate() => Icon(Icons.star,color: Colors.yellow.shade600,);
