import 'package:book_store_app/cart/cart.dart';
import 'package:book_store_app/home_page/main.dart';
import 'package:flutter/material.dart';
import 'package:book_store_app/saved/saved_book.dart';
import 'package:book_store_app/add_book/main_add.dart';
class MenuBar extends StatelessWidget {
  final Color? c1,c2,c3,c4;
  final String? flag;
  const MenuBar({
    Key? key, this.c1, this.c2, this.c3, this.flag, this.c4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.only(bottom: 28),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 4,
              blurRadius: 14,
              offset: Offset(5,7)
            )
          ],
          borderRadius: BorderRadius.circular(18),
          color: Colors.white,

        ),
        width: 270,
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              if (flag!='home') {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyApp()),
              );
              }
            }, child: Icon(Icons.home_outlined,color: c1,)),
            TextButton(onPressed: (){
              if (flag!='cart') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Cart()),
                );
              }
            }, child: Icon(Icons.shopping_cart_outlined,color: c2)),
            TextButton(onPressed: (){
              if(flag!='saved') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SavedBooks()),
                );
              }
            }, child: Icon(Icons.bookmark_outline_outlined,color: c4)),
            TextButton(onPressed: (){
              if(flag!='add') {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddBook()),
              );
              }
            }, child: Icon(Icons.add_outlined,color: c3)),
          ],
        ),
      ),
    );
  }
}
