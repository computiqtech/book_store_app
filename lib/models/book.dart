import 'package:book_store_app/models/mytext.dart';
import 'package:book_store_app/models/rate_stars.dart';
import 'package:book_store_app/screens/book_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Book extends StatelessWidget {
  Book({
    Key? key,
    required this.myurl,
    required this.name,
    required this.auther,
    required this.prise,
    required this.rate,
    this.incart = false,
    this.likeit = false,
    this.desc = '',
  });

  final String myurl;
  final String name;
  final String auther;
  final double prise;
  final String desc;
  final double rate;
  bool incart;
  bool likeit;

  static Map<String, Book> libriry = {
    'Dark Psychology Secrets': Book(
      name: 'Dark Psychology Secrets',
      auther: 'Daniel James Hollins',
      rate: 5,
      myurl:
          'https://covers.zlibcdn2.com/covers299/books/59/0e/00/590e0059150e05d0d7e142417189a870.jpg',
      prise: 40.5,
      desc:
          'Whether you have been experiencing manipulation for years, or if this is something entirely new, psychological manipulation can be tricky to decipher. Mostly because the manipulators themselves are true masters of emotional disguise. More often than not, their sweet talking covers their self-serving, dishonest, and, on the whole, sinister intentions. On top of this confusing mismatch of words and examples have also been included in this text to help you get the hang of pinpointing and understanding what emotional manipulation looks like in the real world.',
    ),
    'Exactly What to Say': Book(
      name: 'Exactly What to Say',
      auther: 'Phil M. Jones',
      rate: 3.5,
      myurl:
          'https://covers.zlibcdn2.com/covers299/books/e1/a0/52/e1a052b5428f021f54ae7d469b261674.jpg',
      prise: 15,
      desc:
          'Often the decision between a customer choosing you over someone like you is your ability to know exactly what to say, when to say it, and how to make it count. Phil M. Jones has trained more than two million people across five continents and over fifty countries in the lost art of spoken communication. In Exactly What to Say, he delivers the tactics you need to get more of what you want.',
    ),
    'The Little Prince': Book(
      name: 'The Little Prince',
      auther: 'Antoine De Saint-Exupery',
      rate: 2.5,
      myurl:
          'https://covers.zlibcdn2.com/covers299/books/2c/db/3b/2cdb3b46f0bd12bb4e508b7247777e51.png',
      prise: 10.5,
      desc:
          'This parable tells the story of an air pilot who meets a Little Prince when he has to make a forced landing in the Sahara Desert. The Little Prince tells him wise and enchanted stories.',
    ),
    'The Darkest Temptation': Book(
        name: 'The Darkest Temptation',
        auther: 'Danielle Lori',
        rate: 4,
        myurl:
            'https://covers.zlibcdn2.com/covers299/books/68/dc/12/68dc12c16a144773c8cecfeccc5aa30a.jpg',
        prise: 25,
        desc:
            'This story is dark romance at its best. Simply perfection!"Charmaine Pauls, USA Today bestselling author'),
    'Mechatronics': Book(
        name: 'Mechatronics',
        auther: 'William Bolton',
        rate: 4.5,
        myurl:
            'https://covers.zlibcdn2.com/covers299/books/00/6f/b5/006fb52325cf1242508846ff0bb3490e.jpg',
        prise: 18.99,
        desc:
            'The integration of electronic engineering, mechanical engineering, control and computer engineering - Mechatronics - lies at the heart of the innumerable gadgets, processes and technology without which modern life would seem impossible. From auto-focus cameras to car engine management systems, and from state-of-the-art robots to the humble washing machine, Mechatronics has a hand in them all.This book presents a clear and comprehensive introduction to the area. Practical and applied, it helps you to acquire the mix of skills you will need to comprehend and design mechatronic systems. It also goes much deeper, explaining the very philosophy of mechatronics, and, in so doing, provides you with a frame of understanding to develop a truly interdisciplinary and integrated approach to engineering.'),
  };

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Get.to(() => BookInfo(
                    name: name,
                    auther: auther,
                    desc: desc,
                    myurl: myurl,
                    prise: prise,
                    rate: rate,
                  ));
            },
            child: Image(
              image: NetworkImage(myurl),
              height: 106,
              width: 72,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                mytext(
                  texty: name,
                  isbold: true,
                  sizy: 20,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                mytext(
                  texty: auther,
                  sizy: 14,
                  colory: Colors.grey,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                mytext(
                  texty: '\$$prise',
                  isbold: true,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                FiveStarRow(rate: rate)
              ],
            ),
          ),
          StatefulBuilder(builder: (BuildContext context, mysetState) {
            return IconButton(
              icon: Icon(
                likeit ? Icons.bookmark_added : Icons.bookmark_border,
                color: likeit ? Colors.red : Colors.black,
              ),
              onPressed: () {
                mysetState(() => likeit = !likeit);
              },
            );
          })
        ],
      ),
    );
  }
}

class FiveStarRow extends StatelessWidget {
  const FiveStarRow({
    Key? key,
    required this.rate,
  }) : super(key: key);

  final double rate;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Star(
          mynum: 1,
          rate: rate,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Star(
          mynum: 2,
          rate: rate,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Star(
          mynum: 3,
          rate: rate,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Star(
          mynum: 4,
          rate: rate,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Star(
          mynum: 5,
          rate: rate,
        ),
      ],
    );
  }
}
