import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import 'models.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark),
    backgroundColor: Colors.white,
    elevation: 0,
    toolbarHeight: 20,
    ),
    backgroundColor: Color(0xE5E5E5),
    body: Stack(children: [
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(children: [
            // Profile pic, name, (More) button
            const ProfileBar(name: "Zayn"),
            // Search bar
            const MySearchBar(),
            // Text(Book list)
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              alignment: Alignment.centerLeft,
              child: const Text(
                "Book List",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
            // Books
            Expanded(
              child: SingleChildScrollView(
                child: Obx(() {
                  return Column(
                      children: BookData.books
                          .map((e) => BookPreview(data: e))
                          .toList());
                }),
              ),
            )
          ])),
      HomeBottomNavBar()
    ]));
  }
}
