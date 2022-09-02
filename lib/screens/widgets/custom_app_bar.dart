import 'package:book_store_app/screens/home/home_screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'my_bottom_nav_bar.dart';

class MyAppBar extends StatelessWidget  with PreferredSizeWidget {
  int selected;
   MyAppBar({
     this.selected=0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(onPressed: (){
        Get.to(HomeScreen());
        MybottomNavBar.selected.value=selected;
      },icon:const Icon(Icons.arrow_back_ios,color: Colors.black,size: 20,)),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: SvgPicture.asset("assets/icons/three-dots-vertical.svg",color: Colors.black,height: 20,width: 20,),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}