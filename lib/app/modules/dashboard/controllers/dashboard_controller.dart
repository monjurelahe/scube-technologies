import 'package:get/get.dart';
import '../../../routes/app_routes.dart';

class DashboardController extends GetxController {
  final selectedTab = 0.obs;
  final sourceLoadTab = 0.obs;

  void changeTab(int index) {
    selectedTab.value = index;
  }

  void changeSourceLoadTab(int index) {
    sourceLoadTab.value = index;
  }

  void navigateToDataView() {
    Get.toNamed(AppRoutes.DATA_VIEW);
  }

  void navigateToRevenueView() {
    Get.toNamed(AppRoutes.REVENUE_VIEW);
  }

  void navigateToNoData() {
    Get.toNamed(AppRoutes.NO_DATA);
  }

  void logout() {
    Get.offAllNamed(AppRoutes.LOGIN);
  }
}
