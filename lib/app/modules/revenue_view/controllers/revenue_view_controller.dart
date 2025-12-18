import 'package:get/get.dart';
import '../../../routes/app_routes.dart';

class RevenueViewController extends GetxController {
  // Observable variables
  final RxBool isLoading = false.obs;
  final RxBool isRevenueView = true.obs;
  final RxBool isExpanded = false.obs;

  // Methods
  void toggleView(bool value) {
    isRevenueView.value = value;
    if (!value) {
      // Navigate to data view
      Get.offNamed(AppRoutes.DATA_VIEW);
    }
  }

  void toggleExpanded() {
    isExpanded.value = !isExpanded.value;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
