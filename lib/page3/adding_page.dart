import 'package:book_store_app/main.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class AddingBooksPage extends StatelessWidget {
  const AddingBooksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bookNaneB = TextEditingController();
    final autherNameB = TextEditingController();
    final priceB = TextEditingController();
    final imageLinkB = TextEditingController();
    final descriptionB = TextEditingController();

    int maxLines = 6;
    return Scaffold(
      body: Column(
        children: [
          navBar(
            onPress: () {
              Navigator.pop(
                context,
              );
            },
            text: "Add Book",
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 45, right: 45),
            child: Column(
              children: [
                Container(
                  height: 3 * 20.0,
                  child: TextField(
                    controller: bookNaneB,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFFFFFFF),
                      labelText: "Book Name",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black38),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 45, right: 45),
            child: Column(
              children: [
                Container(
                  height: 3 * 20.0,
                  child: TextField(
                    controller: autherNameB,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFFFFFFF),
                      labelText: "Auther Name",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black38),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 45, right: 45),
            child: Column(
              children: [
                Container(
                  height: 3 * 20.0,
                  child: TextField(
                    controller: priceB,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFFFFFFFF),
                      labelText: "Price",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black38),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 45, right: 45),
            child: Column(
              children: [
                Container(
                  height: 3 * 20.0,
                  child: TextField(
                    controller: imageLinkB,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFFFFFFF),
                      labelText: "Image Link",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black38),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 45, right: 45),
            child: Column(
              children: [
                Container(
                  height: maxLines * 20.0,
                  child: TextField(
                    controller: descriptionB,
                    maxLines: maxLines,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFFFFFFF),
                      labelText: "Description",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black38),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              Books.add(bookNaneB.text, autherNameB.text, priceB.text,
                  imageLinkB.text, descriptionB.text);
              bookNaneB.clear();
              autherNameB.clear();
              priceB.clear();
              imageLinkB.clear();
              descriptionB.clear();
            },
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              backgroundColor: Color(0xFF06070D),
              primary: Colors.white,
              padding:
                  EdgeInsets.only(bottom: 20, top: 20, left: 121, right: 121),
            ),
            child: const Text(
              "Add",
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
              fontWeight: FontWeight.w400,
              //fontFamily: "Niramit",
              color: Color(0xFF191919),
            ),
          ),
        )
      ],
    );
  }
}
