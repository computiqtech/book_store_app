import 'package:book_store_app/core/theme.dart';
import 'package:book_store_app/routes/app_pages.dart';
import 'package:book_store_app/routes/app_routes.dart';
import 'package:book_store_app/views/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: AppRoutes.DASHBOARD,
      getPages: AppPages.list,
    );
  }
}
