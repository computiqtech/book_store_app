import 'package:flutter/material.dart';
import 'Cart.dart';
import 'model.dart';
import 'Stars.dart';
class BookDisp extends StatelessWidget {
  const BookDisp({Key? key, required this.book}) : super(key: key);
  final Book book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28),
      child: Stack(
        children: [
          Column(
          children: [
            Image.network(book.imagelink),
            const SizedBox(height: 22),
            Text(book.bookname, style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600)),
            SizedBox(height: 12),
            Text(book.author,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xFF06070D).withOpacity(0.5))),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const[
                Spacer(flex: 5,),
                Stars(),
                Spacer(flex: 1,),
                Text('4.5/5.0'),
                Spacer(flex: 5,)
              ],
            ),
            SizedBox(height: 17),
            Text(book.description)
          ],
        ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 40,
                    width: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(Icons.short_text),
                        Text('Preview')
                      ],
                    ),
                  ),
                  Container(
                      height: 40,
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(Icons.textsms),
                        Text('Reviews')
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 36),
              GestureDetector(onTap: (){
                book.markAsDone;
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Added to Shopping cart')));
              },
                child: Container(
                  width: 320,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 17),
                    child: Text('Buy Now for ${book.price}',style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                  ),
                ),
              )
            ],
          )
       ]
      ),
    );
  }
}
