import 'package:book_store_app/controllers/add_controller.dart';
import 'package:book_store_app/controllers/dashboard.dart';
import 'package:book_store_app/controllers/home_controller.dart';
import 'package:get/get.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<AddController>(() => AddController());
  }
}
