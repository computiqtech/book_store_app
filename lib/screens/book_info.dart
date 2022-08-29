import 'package:book_store_app/models/book.dart';
import 'package:book_store_app/models/mytext.dart';
import 'package:book_store_app/screens/add_books_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class BookInfo extends StatelessWidget {
  const BookInfo(
      {super.key,
      required this.myurl,
      required this.name,
      required this.auther,
      required this.prise,
      required this.desc,
      required this.rate});

  final String myurl;
  final String name;
  final String auther;
  final double prise;
  final String desc;
  final double rate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 243, 243, 243),
      //! appbar
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
            statusBarColor: Colors.transparent),
        backgroundColor: const Color.fromARGB(255, 243, 243, 243),
        elevation: 0,
        leading: DeffultAppbar(
          onpress: () {
            Get.back();
          },
        ),
        leadingWidth: 65,
        toolbarHeight: 55,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20, top: 5),
            child: Icon(
              Icons.more_vert,
              color: Colors.black,
              size: 30,
            ),
          )
        ],
      ),
      //!body
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        width: double.maxFinite,
        child: Column(
          children: [
            Image(
              image: NetworkImage(
                myurl,
              ),
              height: 225,
            ),
            const SizedBox(
              height: 20,
            ),
            mytext(texty: name, isbold: T, sizy: 20),
            const SizedBox(
              height: 10,
            ),
            mytext(texty: auther, colory: Colors.grey),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FiveStarRow(rate: rate),
                const SizedBox(
                  width: 10,
                ),
                //todo rate
                mytext(texty: '$rate / 5.0'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 100,
              child: SingleChildScrollView(
                child: Text(
                  desc,
                  style: const TextStyle(fontSize: 18, height: 1.5),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 40,
                  width: 154,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('assets/images/Preview.png')),
                      SizedBox(
                        width: 10,
                      ),
                      mytext(texty: 'Preview')
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: 154,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('assets/images/Reviews.png')),
                      SizedBox(
                        width: 10,
                      ),
                      mytext(texty: 'Reviews')
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(
                  16,
                ),
              ),
              child: TextButton(
                onPressed: () {
                  Book.libriry[name]!.incart = true;
                },
                child: mytext(
                  texty: 'Buy Now for \$$prise',
                  colory: Colors.white,
                  sizy: 16,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
