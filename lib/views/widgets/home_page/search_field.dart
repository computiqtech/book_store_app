import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../controllers/book_controller.dart';
import '../../../style.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BookController bookController = Get.find();

    return Container(
      padding: const EdgeInsets.only(left: 14, right: 17.69),
      margin: const EdgeInsets.only(left: 30, right: 28, top: 24),
      height: 47,
      width: double.infinity,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: shadowColor,
            offset: Offset(0, 8),
            blurRadius: 24,
            spreadRadius: 12,
          ),
        ],
      ),
      child: TextField(
        scrollPhysics: const ScrollPhysics(),
        onChanged: (value) => bookController.searchResult.value = value,
        decoration: InputDecoration(
          hintText: 'Search...',
          hintStyle: hintTextStyle,
          suffixIcon: Obx(
            () => SvgPicture.asset(
              'assets/images/search.svg',
              color: bookController.getSVGSearchColor,
            ),
          ),
          suffixIconConstraints: const BoxConstraints(maxHeight: 20.31, maxWidth: 20.31),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
