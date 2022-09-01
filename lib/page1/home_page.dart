// ignore_for_file: non_constant_identifier_names

import 'package:book_store_app/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../page2/shoping_page.dart';
import '../page3/adding_page.dart';
import '../page4/book_buy.dart';
import '../main.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Books b;
    final TextController = TextEditingController();
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              navBar(
                onPress: () {
                  Navigator.pop(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AddingBooksPage(),
                      ));
                },
              ),
              const search(
                text: "Search..",
                maxLines: 3,
              ),
              navText(text: "Book List"),
              Obx(
                () {
                  return Expanded(
                    child: ListView(
                      children: Books.MyBooks.map(
                        (e) => bookDetails(b: e),
                      ).toList(),
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

class flowIcons extends StatelessWidget {
  const flowIcons({
    Key? key,
  }) : super(key: key);

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

class bookDetails extends StatelessWidget {
  const bookDetails({
    Key? key,
    required this.b,
  }) : super(key: key);

  final Books b;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(ShopingPage(
          b: b,
        ));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 30, top: 15, right: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: SizedBox(
                    height: 106,
                    width: 72,
                    child: Image.network(
                      b.image.value,
                      height: 106,
                      width: 72,
                    ),
                  ),
                ),
                Container(
                  width: 180,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        b.bookName.value,
                        style: const TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF06070D),
                        ),
                      ),
                      Text(
                        b.authorName.value,
                        textAlign: TextAlign.start,
                        textDirection: TextDirection.ltr,
                        style: const TextStyle(
                          fontSize: 12,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        "\$${b.price.value}",
                        textAlign: TextAlign.start,
                        textDirection: TextDirection.ltr,
                        style: const TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF06070D),
                        ),
                      ),
                      Row(
                        children: const [
                          starsIcon(),
                          starsIcon(),
                          starsIcon(),
                          starsIcon(),
                          starsIcon(),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ), /*
            Container(
              child: TextButton(
                child: Icon(
                  Icons.save_alt,
                  color: Color(0xFF06070D),
                ),
                onPressed: () { 
                  b.
                }, //=> Books.makeAsTrue(),
              ),
            ),
            */
          ],
        ),
      ),
    );
  }
}

class starsIcon extends StatelessWidget {
  const starsIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.star,
      color: Color(0xFFFFC41F),
      size: 14,
    );
  }
}

class navText extends StatelessWidget {
  const navText({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        padding:
            const EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 15),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 25,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            //fontFamily: "Niramit",
            color: Color(0xFF191919),
          ),
        ));
  }
}

class navBar extends StatelessWidget {
  navBar({
    required this.onPress,
    Key? key,
  }) : super(key: key);
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 50, left: 25, right: 25, bottom: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: Image.network(
                      'https://miro.medium.com/max/1400/1*6VOiMKuyK_KJRPJ2W6dXdw.png',
                      height: 40,
                      width: 40,
                    ),
                  ),
                  const Text(
                    "  Hi, DOHA",
                    style: TextStyle(
                      fontSize: 14,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
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
      ],
    );
  }
}

class search extends StatelessWidget {
  const search({Key? key, required this.text, required this.maxLines})
      : super(key: key);

  final String text;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    final TextController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, left: 30, right: 30),
      child: SizedBox(
        height: maxLines * 20.0,
        child: TextField(
          maxLines: maxLines,
          //onChangd: searchBook,
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFFFFFFFF),
            labelText: text,
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black38),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFFFFFFF)),
            ),
            suffixIcon: TextButton(
              child: Icon(
                Icons.search,
                color: TextController.text.isEmpty ? Colors.grey : Colors.black,
              ),
              onPressed: () => TextController.clear(),
            ),
          ),
          onSubmitted: (value) {
            //name = value;
          },
        ),
      ),
    );
  }
/*
  void searchBook(String query) {
    final suggestion = Books.MyBooks.where((book) {
      final bookTitle = book.bookName.toLowerCase();
      final input = query.toLowerCase();
    }).toList();
    setState(() => books = suggestion);
  }
  */
}
