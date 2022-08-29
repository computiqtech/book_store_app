
import 'package:book_store_app/book_details_page/book_details_page.dart';
import 'package:book_store_app/main_views/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Navigators extends StatelessWidget {
  const Navigators({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, bottom: 10),
            child: Container(
              width: 170,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  //border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: const Offset(0, 9))
                  ]),
              child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const BookDetailsPage()));
                  },
                  child: Icon(Icons.home)
            ),
          ),
      )],
      ),
    );
  }
}
