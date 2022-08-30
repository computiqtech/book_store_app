import 'package:book_store_app/main_page/main_action_button.dart';
import 'package:book_store_app/main_page/profileCard.dart';
import 'package:book_store_app/main_page/searchTextField.dart';
import 'package:book_store_app/models/myColor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/myLogic.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 55, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ProfileCard(),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 40),
                  child: SearchTextField(),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Obx(() {
                    return Text(
                        search.value.isEmpty
                            ? 'Book List'
                            : 'Book with name: ${search.value}',
                        style: TextStyle(
                          color: MyColor.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ));
                  }),
                ),
                Expanded(
                  child: Obx(() {
                    return ListView(
                        children: MyFunctions.mainPageViewBook()
                    );}),
                ),
              ],
            ),
          ),
          const MainActionButton()
        ],
      ),
    );
  }
}
