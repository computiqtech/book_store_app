import 'package:book_store_app/modules/add/addbook.dart';
import 'package:book_store_app/modules/cart/cart.dart';
import 'package:book_store_app/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:book_store_app/modules/home/homeScreen.dart';
import 'package:book_store_app/model/model.dart';

class AboutBook extends StatelessWidget {
  const AboutBook({Key? key, required int this.x}) : super(key: key);
  final int x;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 229, 229),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 236, 229, 229),
        titleSpacing: 20,
        elevation: 0,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return HomeScreen();
                }));
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            )
          ],
        ),
        actions: [
          Icon(
            Icons.more_vert,
            color: Colors.black,
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Image.network(
            "${Book.one[x].link}",
            width: 300,
            height: 300,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            Book.one[x].name,
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(Book.one[x].Author_name,
              style: TextStyle(
                color: Color.fromRGBO(104, 104, 104, 1),
                fontSize: 15,
              )),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildthestar(),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          Container(
            height: 100,
            padding: EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: SingleChildScrollView(
                    child: Text(
                      Book.one[x].Descrip,
                      maxLines: 100,
                    ),
                  ))
                ]),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildnormal(ic: Icons.list),
              SizedBox(
                width: 10,
              ),
              buildnormal(ic: Icons.chat, text: "Reviews"),
            ],
          ),
          SizedBox(height: 30,),
          buildbotton(
            text: "Buy Now for \$ ${Book.one[x].price}",
            onPressed: () {
            BookUser(Book.one[x].name, Book.one[x].Author_name,
                Book.one[x].price, Book.one[x].link, Book.one[x].Descrip).add();
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
                  screen = 2 ; 
              return MyCart();
            }));
          })
        ]),
      ),
    );
  }
}
