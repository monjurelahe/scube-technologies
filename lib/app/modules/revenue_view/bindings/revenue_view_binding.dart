import 'package:get/get.dart';
import '../controllers/revenue_view_controller.dart';

class RevenueViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RevenueViewController>(() => RevenueViewController());
  }
}
