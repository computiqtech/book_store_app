import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/book_controller.dart';
import '../../style.dart';
import '../widgets/add_page/add_new_book.dart';
import '../widgets/custom_app_bar.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  late final BookController bookController;

  @override
  void initState() {
    super.initState();
    bookController = Get.find();
    bookController.currentPage = 'add page';
  }

  // @override
  // void dispose() {
  //   bookController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: const CoustomAppBar(),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              AddNewBook(),
            ],
          ),
        ),
      ),
    );
  }
}
