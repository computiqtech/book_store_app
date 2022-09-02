import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/book_controller.dart';
import '../../style.dart';
import '../widgets/cart_page/purchased_list.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_bottom_navigation_bar.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  late final BookController bookController;

  @override
  void initState() {
    super.initState();
    bookController = Get.find();
    bookController.currentPage = 'cart page';
  }

  // @override
  // void dispose() {
  //   bookController.dispose();
  //   super.dispose();
  // }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: white,
      appBar: const CoustomAppBar(),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            children: const [
              PurchasedList(),
              SizedBox(height: 88),
            ],
          ),
        ),
      ),
      floatingActionButton: const CustomBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
