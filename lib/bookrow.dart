import 'package:book_store_app/Buybook.dart';
import 'package:flutter/material.dart';
import 'model.dart';
import 'Buybook.dart';
import 'Stars.dart';
class Bookview extends StatelessWidget {
  const Bookview({Key? key,required this.book}) : super(key: key);
final Book book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> BuyBook(book: book)));
    },
      child: Row(
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5)),
              child: Image.network(book.imagelink,width: 70,height: 100,)),

          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(book.bookname),
                const SizedBox(height: 4),
                Text(book.author),
                const SizedBox(height: 7),
                Text('\$ ${book.price}'),
                const SizedBox(height: 12),
                Stars(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
