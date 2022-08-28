
import 'package:book_store_app/Details_Book/DetailsBook.dart';
import 'package:book_store_app/Home_Page/ContainerBook.dart';
import 'package:book_store_app/Home_Page/Navigation_Bar.dart';
import 'package:book_store_app/data/DataBook.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ListHome extends StatelessWidget {
  const ListHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Obx(() {
            return ListView(
              children:DataBook.Book.map((e) => GestureDetector(
                onTap: (){
                  Get.to(Details(data: e,));
                },
                child: Books(name:e.name,auther_name: e.auther_name,
                price: e.price,image: e.image,),
              )).toList(),
                // Books()

            );
          }
        ),
        Navigation(),
      ],
    );
  }
}

