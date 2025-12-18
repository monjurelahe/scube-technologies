import 'package:get/get.dart';
import 'package:scube_task/app/modules/revenue_view/bindings/revenue_view_binding.dart';
import '../modules/auth/login/views/login_view.dart';
import '../modules/auth/login/bindings/login_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/data_view.dart/views/data_view.dart';
import '../modules/data_view.dart/bindings/data_view_binding.dart';
import '../modules/revenue_view/views/revenue_view.dart';
import '../modules/no_data/views/no_data_view.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: AppRoutes.DATA_VIEW,
      page: () => const DataView(),
      binding: DataViewBinding(),
    ),
    GetPage(
      name: AppRoutes.REVENUE_VIEW,
      page: () => const RevenueView(),
      binding: RevenueViewBinding(),
    ),
    GetPage(name: AppRoutes.NO_DATA, page: () => const NoDataView()),
  ];
}
