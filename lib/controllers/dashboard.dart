import 'package:book_store_app/views/addition/add_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  var tabIndex = 0.obs;
  late PageController pageController;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
  }

  @override
  void onClose() {
    super.onClose();
    pageController.dispose();
  }

  void changeTabIndex(int index) {
    if (index != 2) {
      tabIndex.value = index;
      pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.linear,
      );
    } else {
      Get.to(const AddView());
    }
  }
}
