import 'package:book_store_app/home_page/book_model.dart';
import 'package:book_store_app/home_page/card_book.dart';
import 'package:flutter/material.dart';
import 'package:book_store_app/add_book/main_add.dart';
import 'package:get/get.dart';
class BookPage extends StatefulWidget {
  //final String title,auther,price,desc,imgPath;
  final Book book;
  const BookPage({Key? key,required this.book}) : super(key: key);
  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: Colors.grey.shade100,
            primarySwatch: Colors.grey),
        home: Scaffold(
          appBar: MyAppBar(context),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Center(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 12,),
                  ClipRRect(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(8),bottomRight: Radius.circular(8)),
                    child: Image(image: NetworkImage(widget.book.imgPath),
                      width: 210,
                  )
                  ),
                  const SizedBox(height: 12,),
                  Text(widget.book.title,style: TextStyle(
                    fontSize: 24, fontWeight: FontWeight.w600
                  ),),
                  Text(widget.book.author,style: TextStyle(
                    fontSize: 14,color: Colors.black54
                  ),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Rate(),Rate(),Rate(),Rate(),Rate(),
                      Text('4.0/5.0')
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(widget.book.desc,style: TextStyle(
                        fontSize: 14,color: Colors.black54,height: 1.6
                    ),),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      BookDetBtn(txt: 'Preview',ic: Icons.preview),
                      SizedBox(width: 12,),
                      BookDetBtn(txt: 'Reviews',ic: Icons.reviews_outlined),
                    ],
                  ),
                  SizedBox(height: 20,),


                  ElevatedButton(onPressed: (){
                    if(widget.book.inCart.value==false)
                    {
                      widget.book.addToCart();
                    }
                    else
                    {
                      widget.book.removeFromCart();
                    }
                  },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity,70),
                      padding: EdgeInsets.symmetric(horizontal: 24,vertical: 12),
                      primary: Colors.black,
                      elevation: 0,
                    ),
                    child: Obx(() {
                        return Text(widget.book.inCart.value?
                        ('Remove From the cart'.obs).value
                            :('Buy Now for \$${widget.book.price}'.obs).value,style: TextStyle(color: Colors.white),);
                      }
                    ),
                  )
                ],
              ),
            ),
          ),
        )
    );
  }

}

class BookDetBtn extends StatelessWidget {
  final String txt;
  final IconData ic;
  const BookDetBtn({
    Key? key, required this.txt, required this.ic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(onPressed: (){},
      style: ElevatedButton.styleFrom(
        //padding: EdgeInsets.symmetric(horizontal: 24,vertical: 12),
        minimumSize: Size(150, 50),
        primary: Colors.white,
        elevation: 0,
      ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
              Icon(ic),
              Text(txt),
          ],
        ),
      ),
    );
  }
}