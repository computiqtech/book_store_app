import 'package:book_store_app/cart/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../home/models.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.dark),
          backgroundColor: Colors.white,
          elevation: 0,
          toolbarHeight: 40,
        ),
        backgroundColor: const Color(0x00e5e5e5),
        body: Container(
            width: double.maxFinite,
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Stack(children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(children: [
                  // Text(Book list)
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Book List",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                  ),
                  // Books
                  Expanded(
                    child: SingleChildScrollView(
                      child: Obx(() {
                        {
                          return Column(
                              children: BookData.boughtBooks
                                  .map((e) => BookPreview(data: e))
                                  .toList());
                        }
                      }),
                    ),
                  )
                ]),
              ),
              CartBottomNavBar()
            ])));
  }
}
