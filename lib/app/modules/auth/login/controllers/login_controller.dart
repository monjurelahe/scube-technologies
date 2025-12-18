import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scube_task/app/routes/app_routes.dart';

class LoginController extends GetxController {
  // Text controllers
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Observable variables
  final RxBool isLoading = false.obs;
  final RxString username = ''.obs;
  final RxString password = ''.obs;
  final RxBool isPasswordHidden = true.obs;

  // Methods
  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  void login() {
    if (usernameController.text.isEmpty || passwordController.text.isEmpty) {
      Get.snackbar(
        'Error',
        'Please enter username and password',
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    // Implement login logic here
    isLoading.value = true;

    // Simulate API call
    Future.delayed(const Duration(seconds: 1), () {
      isLoading.value = false;

      // Navigate to dashboard on success
      Get.offAllNamed(AppRoutes.DASHBOARD);

      Get.snackbar(
        'Success',
        'Welcome to SCUBE!',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    });
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
