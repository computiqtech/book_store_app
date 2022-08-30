import 'package:book_store_app/models/myColor.dart';
import 'package:book_store_app/models/myLogic.dart';
import 'package:book_store_app/models/myUiComponent.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../main_page/main_action_button.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.backgroundColor,
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 55, horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyAppBar(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Text(
                          'Card',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: Obx(() {
                          return ListView(
                              children: MyFunctions.cardPageViewBooks());
                        }),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const MainActionButton(),
      ]),
    );
  }
}
