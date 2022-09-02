import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/book_controller.dart';
import '../../style.dart';
import '../widgets/custom_bottom_navigation_bar.dart';
import '../widgets/home_page/book_list.dart';
import '../widgets/home_page/search_field.dart';
import '../widgets/home_page/user_account.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final BookController bookController;

  @override
  void initState() {
    super.initState();
    bookController = Get.find();
    bookController.currentPage = 'home page';
  }

  // @override
  // void dispose() {
  //   super.dispose();
  //   bookController.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        leadingWidth: 132,
        leading: const UserAccount(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
            color: black,
            splashRadius: 20,
          ),
        ],
        toolbarHeight: 64,
        elevation: 0,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          physics: const ScrollPhysics(),
          children: const [
            SearchField(),
            BookList(),
            SizedBox(height: 88),
          ],
        ),
      ),
      floatingActionButton: const CustomBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
