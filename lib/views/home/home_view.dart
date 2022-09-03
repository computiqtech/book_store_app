import 'package:book_store_app/controllers/home_controller.dart';
import 'package:book_store_app/views/home/widgets/body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Body(),
      ),
    );
  }
}
