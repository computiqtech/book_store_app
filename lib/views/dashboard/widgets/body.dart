import 'package:book_store_app/controllers/dashboard.dart';
import 'package:book_store_app/views/addition/add_view.dart';
import 'package:book_store_app/views/dashboard/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../cart/cart_view.dart';
import '../../home/home_view.dart';

class Body extends GetView<DashboardController> {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.changeTabIndex,
          children: const [
            HomeView(),
            CartView(),
            AddView(),
          ],
        ),
        const CustomBottomNavBar(),
      ],
    );
  }
}
