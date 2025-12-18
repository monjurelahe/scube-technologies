import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/revenue_view_controller.dart';
import '../../../core/values/app_colors.dart';
import '../../data_view.dart/widgets/view_toggle_button.dart';
import '../widgets/expandable_data_card.dart';

class RevenueView extends GetView<RevenueViewController> {
  const RevenueView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackground,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Get.back(),
        ),
        title: const Text(
          'SCM',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.notifications_outlined,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              Positioned(
                right: 12,
                top: 12,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // View Toggle
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(6),
                child: Obx(
                  () => Row(
                    children: [
                      Expanded(
                        child: ViewToggleButton(
                          title: 'Data View',
                          isSelected: !controller.isRevenueView.value,
                          onTap: () => controller.toggleView(false),
                        ),
                      ),
                      Expanded(
                        child: ViewToggleButton(
                          title: 'Revenue View',
                          isSelected: controller.isRevenueView.value,
                          onTap: () => controller.toggleView(true),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Circular Progress
              SizedBox(
                width: 180,
                height: 180,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: 160,
                      height: 160,
                      child: CircularProgressIndicator(
                        value: 1.0,
                        strokeWidth: 18,
                        backgroundColor: AppColors.greyBackground,
                        valueColor: const AlwaysStoppedAnimation<Color>(
                          AppColors.greyBackground,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 160,
                      height: 160,
                      child: CircularProgressIndicator(
                        value: 0.88,
                        strokeWidth: 18,
                        backgroundColor: Colors.transparent,
                        valueColor: const AlwaysStoppedAnimation<Color>(
                          AppColors.primaryBlue,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          '8897455',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        Text(
                          'tk',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Expandable Data Card
              Obx(
                () => ExpandableDataCard(
                  isExpanded: controller.isExpanded.value,
                  onToggle: controller.toggleExpanded,
                  dataList: const [
                    {
                      'label': 'Data 1',
                      'value': '2798.50 (29.53%)',
                      'cost': '35689 ৳',
                    },
                    {
                      'label': 'Data 2',
                      'value': '2798.50 (29.53%)',
                      'cost': '35689 ৳',
                    },
                    {
                      'label': 'Data 3',
                      'value': '2798.50 (29.53%)',
                      'cost': '35689 ৳',
                    },
                    {
                      'label': 'Data 4',
                      'value': '2798.50 (29.53%)',
                      'cost': '35689 ৳',
                    },
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
