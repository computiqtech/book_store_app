import 'package:book_store_app/bindings/dashboard.dart';
import 'package:book_store_app/routes/app_routes.dart';
import 'package:book_store_app/views/dashboard/dashboard_view.dart';
import 'package:get/get.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
  ];
}
