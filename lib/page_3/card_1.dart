
import 'package:book_store_app/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../modules.dart';

class BackBar extends StatelessWidget {
  const BackBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(onPressed: (){
          MyBooks.selectedIcon.value = Icons.home_filled;
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
        },
            child: const Icon(Icons.arrow_back_ios, color: Colors.black,)),
        TextButton(onPressed: (){}, child: const Icon(Icons.more_vert, color: Colors.black,), ),
      ],
    );
  }
}
