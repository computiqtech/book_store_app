import 'package:book_store_app/add_book/add_book.dart';
import 'package:book_store_app/buy_book/shopping_cart.dart';
import 'package:book_store_app/home_page/home_page.dart';
import 'package:book_store_app/saved/saved_cards_page.dart';
import 'package:flutter/material.dart';


class NavButtonsSaved extends StatelessWidget {
  const NavButtonsSaved({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 700,
      left: 90,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30), //border corner radius
            boxShadow:[
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), //color of shadow
                spreadRadius: 5, //spread radius
                blurRadius: 7, // blur radius
                offset: Offset(0, 2),)]
        ),
        height: 72,
        width: 227,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: IconButton(
                    color: Colors.black,
                    icon: Icon(Icons.home_outlined, size: 30),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },)
              ),
              Expanded(
                flex: 1,
                child: IconButton(
                    icon: Icon(Icons.shopping_cart_outlined, size: 30),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ShoppingCart()),
                      );
                    }),
              ),
              Expanded(
                flex: 1,
                child: IconButton(
                    icon: Icon(Icons.favorite, size: 30),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SavedCards()),
                      );
                    }),
              ),
              Expanded(
                flex: 1,
                child: IconButton(
                    icon: Icon(Icons.add, size: 30),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddBook()),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
