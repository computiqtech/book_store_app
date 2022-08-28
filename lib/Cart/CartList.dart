
import 'package:book_store_app/Details_Book/DetailsBook.dart';
import 'package:book_store_app/Home_Page/ContainerBook.dart';
import 'package:book_store_app/data/DataBook.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ListCart extends StatelessWidget {
  const ListCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Obx(() {
            return ListView(
              children:DataBook.Book.where((p0) => !p0.isCart.value).map((e) => GestureDetector(
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

        ],
      ),
    );
  }
}