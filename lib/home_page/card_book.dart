
import 'package:book_store_app/book_page/the_book.dart';
import 'package:book_store_app/home_page/book_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CardBook extends StatefulWidget {
  final Book book;
  const CardBook({Key? key,required this.book}) : super(key: key);

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
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BookPage(book: widget.book,)),
          );
        },
        child: Row(
          children: [
             ClipRRect(
                borderRadius: BorderRadius.only(topRight: Radius.circular(8),bottomRight: Radius.circular(8)),
                child: Image(image: NetworkImage(widget.book.imgPath),width: 72)
            ),
            SizedBox(width: 28,),
            Container(
              height: 93,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(widget.book.title.value,style: const TextStyle(
                      fontSize: 16,fontWeight: FontWeight.w600
                  ),),

                  Text(widget.book.author,style: const TextStyle(
                      fontSize: 12,fontWeight: FontWeight.w500,color: Colors.grey
                  ),),
                  Text('\$${widget.book.price}',style: const TextStyle(
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
            Spacer(),
            Obx(
              () {
                return TextButton(onPressed: (){
                  (widget.book.isSaved.value==false)?
                      widget.book.makeItSaved():
                      widget.book.removeFromSaved();
                }, child:Icon(widget.book.isSaved.value==false?Icons.bookmark_add_outlined:Icons.bookmark_added));
              }
            ),

          ],
        ),
      ),
    );
  }
}
Icon Rate() => Icon(Icons.star,color: Colors.yellow.shade600,);
