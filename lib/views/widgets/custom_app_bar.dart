import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../style.dart';

class CoustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CoustomAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: white,
      leading: IconButton(
        onPressed: () => Get.back(),
        icon: const Icon(Icons.arrow_back_ios_new, color: black, size: 20),
        splashRadius: 20,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert),
          color: black,
          splashRadius: 20,
        ),
        const SizedBox(width: 8),
      ],
      elevation: 0,
    );
  }
}
