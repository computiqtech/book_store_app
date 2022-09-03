import 'package:book_store_app/modules/add/addbook.dart';
import 'package:book_store_app/modules/cart/cart.dart';
import 'package:book_store_app/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:book_store_app/model/model.dart';
import 'package:book_store_app/modules/aboute/abouteScreen.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final bool x = true;
  var search = TextEditingController();
  RxString query = ''.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 236, 229, 229),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 236, 229, 229),
          titleSpacing: 20,
          title: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  height: 40,
                  image: AssetImage(
                    'images/one.jfif',
                  ),
                  // fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "hi , ali!",
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
          actions: [
            Icon(
              Icons.more_vert,
              color: Colors.black,
            )
          ],
          elevation: 0,
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //box Search
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(5),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: search,
                                decoration: InputDecoration(
                                  hintText: "search",
                                  suffixIcon: Icon(
                                    Icons.search,
                                    color: Colors.black,
                                  ),
                                  border: InputBorder.none,
                                ),
                                onChanged: (x) {
                                  query = x.obs;
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Book List",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // // single book

                      Expanded(
                        child: Obx(() {
                        return ListView(
                            children: Book.one
                                .where(
                                    (element) => element.name.contains(query))
                                .map(
                                  (e) => GestureDetector(
                                      onTap: () {
                                        Navigator.pushReplacement(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return AboutBook(
                                            x: Book.one.indexOf(e),
                                          );
                                        }));
                                      },
                                      child: builsinglepage(e)),
                                )
                                .toList());
                      })
                      ),
                    ]),
              ),
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
        ));
  }

  Widget builsinglepage(Book abd) {
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
