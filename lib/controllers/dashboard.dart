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
    tabIndex.value = index;
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.linear,
    );
  }
}
