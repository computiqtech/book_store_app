import 'package:book_store_app/main.dart';
import 'package:flutter/material.dart';

import '../page1/home_page.dart';
import '../page3/adding_page.dart';

class ShopingPage extends StatelessWidget {
  const ShopingPage({
    Key? key,
    required this.b,
  }) : super(key: key);
  final Books b;
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
              ),
              Expanded(
                child: ListView(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 28, right: 28, top: 10),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 320,
                            width: 216,
                            child: Image.network(
                              b.image.value,
                              height: 320,
                              width: 216,
                            ),
                          ),
                          Text(
                            b.bookName.value,
                            textAlign: TextAlign.start,
                            textDirection: TextDirection.ltr,
                            style: const TextStyle(
                              fontSize: 24,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF06070D),
                            ),
                          ),
                          Text(
                            b.authorName.value,
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              starsIcon(),
                              starsIcon(),
                              starsIcon(),
                              starsIcon(),
                              starsIcon(),
                              Text(
                                "   4.5",
                                textAlign: TextAlign.start,
                                textDirection: TextDirection.ltr,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF06070D),
                                ),
                              ),
                              Text(
                                "/5.0",
                                textAlign: TextAlign.start,
                                textDirection: TextDirection.ltr,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF828285),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            b.description.value,
                            textAlign: TextAlign.start,
                            textDirection: TextDirection.ltr,
                            style: const TextStyle(
                              fontSize: 14,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF828285),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 150,
            right: 30,
            left: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    //Books.makeAsTrue();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.list),
                      Text(
                        "preview",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    backgroundColor: Color(0xFFFFFFFF),
                    primary: Colors.black,
                    padding: EdgeInsets.only(
                        bottom: 20, top: 20, left: 35, right: 35),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    //Books.makeAsTrue();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.message),
                      Text(
                        "Reviews",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    backgroundColor: Color(0xFFFFFFFF),
                    primary: Colors.black,
                    padding: EdgeInsets.only(
                        bottom: 20, top: 20, left: 35, right: 35),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 50,
            left: 30,
            right: 30,
            child: TextButton(
              onPressed: () {
                //Books.makeAsTrue(b.isSold);
                b.isSold.value = true;
              },
              child: Text(
                "buy Now for \$${b.price.value}",
              ),
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                backgroundColor: Color(0xFF06070D),
                primary: Colors.white,
                padding: EdgeInsets.only(bottom: 25, top: 25),
              ),
            ),
          ),
        ],
      ),
    );
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
      ],
    );
  }
}
