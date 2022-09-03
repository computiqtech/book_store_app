import 'package:book_store_app/controllers/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomBottomNavBar extends GetView<DashboardController> {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: const EdgeInsets.only(bottom: 42),
        height: 72,
        width: 227,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color(0xff07080E).withOpacity(0.05),
              spreadRadius: 7,
              blurRadius: 32,
              offset: const Offset(0, 4),
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(22),
          child: Obx(
            () => BottomNavigationBar(
              unselectedItemColor: const Color(0xff9C9EA8),
              currentIndex: controller.tabIndex.value,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              backgroundColor: Colors.white,
              elevation: 0,
              onTap: controller.changeTabIndex,
              items: [
                _bottomNavigationBarItem(
                  asset: "assets/images/icons/home.svg",
                  label: "Home",
                  index: 0,
                ),
                _bottomNavigationBarItem(
                  asset: "assets/images/icons/cart.svg",
                  label: "Cart",
                  index: 1,
                ),
                _bottomNavigationBarItem(
                  asset: "assets/images/icons/add.svg",
                  label: "Add",
                  index: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _bottomNavigationBarItem(
      {required String asset, required String label, required int index}) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        asset,
        color: controller.tabIndex.value == index
            ? const Color(0xff06070D)
            : const Color(0xff9C9EA8),
      ),
      label: label,
    );
  }
}
