import 'package:get/get.dart';
import '../../../routes/app_routes.dart';

class DataViewController extends GetxController {
  // Observable variables
  final RxString selectedView = 'Energy'.obs;
  final RxBool isLoading = false.obs;
  final RxBool isDataView = true.obs;
  final RxBool isTodayData = true.obs;

  // Methods
  void changeView(String view) {
    selectedView.value = view;
  }

  void toggleView(bool value) {
    isDataView.value = value;
    if (!value) {
      // Navigate to revenue view
      Get.offNamed(AppRoutes.REVENUE_VIEW);
    }
  }

  void toggleDataType(bool value) {
    isTodayData.value = value;
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
