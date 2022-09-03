import 'package:book_store_app/model/model.dart';
import 'package:book_store_app/modules/home/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:book_store_app/modules/add/addbook.dart';

import 'package:book_store_app/shared/components/components.dart';

class MyCart extends StatelessWidget {
  const MyCart({Key? key}) : super(key: key);

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Cart",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView(
                  children: BookUser.two
                      .map(
                        (e) => builsinglepage(e),
                      )
                      .toList()),
            ),
            buildbcenter(onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                    screen = 1;
                return HomeScreen();
              }));
            }, onPressed2: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                    
                screen = 2;
                return MyCart(); 
              }));
            }, onPressed3: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                    
                screen = 3;
                return AddBook();
              }));
            }),
          ],
        ),
      ),
    );
  }

  Widget builsinglepage(BookUser abd) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: Image.network(
              "${abd.link}",
              height: 100,
              width: 90,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                abd.name,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Text(abd.Author_name,
                  style: TextStyle(
                    color: Color.fromRGBO(104, 104, 104, 1),
                    fontSize: 15,
                  )),
              SizedBox(
                height: 5,
              ),
              Text(
                '\$ ${abd.price}',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              buildthestar()
            ],
          ),
        ],
      ),
    );
  }
}
