import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main.dart';
import '../page1/home_page.dart';
import '../page3/adding_page.dart';

class BooksBuyPage extends StatelessWidget {
  const BooksBuyPage({
    Key? key,
  }) : super(key: key);
  //final Books b;
  @override
  Widget build(BuildContext context) {
    final TextController = TextEditingController();
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              navBar(
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                text: "Cart",
              ),
              Obx(
                () {
                  return Expanded(
                    child: ListView(
                      children:
                          Books.MyBooks.where((p) => p.isSold.value == true)
                              .map(
                                (e) => bookDetails(b: e),
                              )
                              .toList(),
                    ),
                  );
                },
              ),
            ],
          ),
          flowIcons(),
        ],
      ),
    );
  }
}

class navBar extends StatelessWidget {
  navBar({
    required this.onPress,
    Key? key,
    required this.text,
  }) : super(key: key);
  final void Function() onPress;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, left: 25, right: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Color(0xFF06070D),
                ),
                onPressed: onPress,
              ),
              IconButton(
                icon: const Icon(
                  Icons.more_vert,
                  color: Color(0xFF06070D),
                ),
                onPressed: () => print('g'),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding:
              const EdgeInsets.only(top: 50, left: 30, right: 30, bottom: 50),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 25,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              //fontFamily: "Niramit",
              color: Color(0xFF191919),
            ),
          ),
        )
      ],
    );
  }
}

class flowIcons extends StatelessWidget {
  const flowIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      left: 82,
      right: 82,
      child: Container(
        height: 72,
        width: 227,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          boxShadow: const [
            BoxShadow(
                color: Colors.black26,
                spreadRadius: 1,
                blurRadius: 10,
                offset: Offset(0, 10)),
          ],
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                iconSize: 30,
                icon: const Icon(
                  Icons.home_outlined,
                  color: Color(0xFF06070D),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
              ),
              IconButton(
                iconSize: 30,
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black54,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BooksBuyPage(),
                    ),
                  );
                },
              ),
              IconButton(
                iconSize: 30,
                icon: const Icon(
                  Icons.add,
                  color: Colors.black54,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddingBooksPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
