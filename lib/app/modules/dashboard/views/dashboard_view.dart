import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scube_task/app/core/values/app_colors.dart';
import '../controllers/dashboard_controller.dart';
import '../widgets/tab_button.dart';
import '../widgets/circular_progress_widget.dart';
import '../widgets/data_card.dart';
import '../widgets/bottom_menu_button.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});

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
              // Tab Section
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Obx(
                  () => Row(
                    children: [
                      Expanded(
                        child: TabButton(
                          title: 'Summary',
                          isSelected: controller.selectedTab.value == 0,
                          onTap: () => controller.changeTab(0),
                        ),
                      ),
                      Expanded(
                        child: TabButton(
                          title: 'SLD',
                          isSelected: controller.selectedTab.value == 1,
                          onTap: () => controller.changeTab(1),
                        ),
                      ),
                      Expanded(
                        child: TabButton(
                          title: 'Data',
                          isSelected: controller.selectedTab.value == 2,
                          onTap: () {
                            controller.changeTab(2);
                            controller.navigateToDataView();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Content Card
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      // Title
                      const Text(
                        'Electricity',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textSecondary,
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Circular Progress
                      CircularProgressWidget(
                        value: 5.53,
                        unit: 'kw',
                        title: 'Total Power',
                      ),
                      const SizedBox(height: 20),

                      // Source/Load Tabs
                      Obx(
                        () => Row(
                          children: [
                            Expanded(
                              child: TabButton(
                                title: 'Source',
                                isSelected: controller.sourceLoadTab.value == 0,
                                onTap: () => controller.changeSourceLoadTab(0),
                              ),
                            ),
                            Expanded(
                              child: TabButton(
                                title: 'Load',
                                isSelected: controller.sourceLoadTab.value == 1,
                                onTap: () => controller.changeSourceLoadTab(1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Data View Section
                      GestureDetector(
                        onTap: controller.navigateToDataView,
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: AppColors.greyBackground,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.solar_power,
                                    color: AppColors.primaryBlue,
                                    size: 25,
                                  ),
                                  const SizedBox(width: 8),
                                  const Text(
                                    'Data View',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      color: AppColors.activeGreen.withOpacity(
                                        0.1,
                                      ),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: const Text(
                                      '(Active)',
                                      style: TextStyle(
                                        color: AppColors.activeGreen,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),
                              _buildDataRow('Data 1', '55505.63'),
                              _buildDataRow('Data 2', '58805.63'),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Data Type 2
                      DataCard(
                        icon: Icons.battery_charging_full,
                        iconColor: AppColors.chartOrange,
                        title: 'Data Type 2',
                        status: '(Active)',
                        data1: '55505.63',
                        data2: '58805.63',
                        onTap: controller.navigateToDataView,
                      ),
                      const SizedBox(height: 16),

                      // Data Type 3
                      DataCard(
                        icon: Icons.electrical_services,
                        iconColor: AppColors.chartCyan,
                        title: 'Data Type 3',
                        status: '(Inactive)',
                        isActive: false,
                        data1: '55505.63',
                        data2: '58805.63',
                        onTap: controller.navigateToDataView,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Bottom Menu Grid
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 2.5,
                children: [
                  BottomMenuButton(
                    icon: Icons.analytics,
                    title: 'Analysis Pro',
                    onTap: controller.navigateToDataView,
                  ),
                  BottomMenuButton(
                    icon: Icons.settings_input_component,
                    title: 'G. Generator',
                    onTap: controller.navigateToNoData,
                  ),
                  BottomMenuButton(
                    icon: Icons.factory,
                    title: 'Plant Summary',
                    onTap: controller.navigateToRevenueView,
                  ),
                  BottomMenuButton(
                    icon: Icons.local_fire_department,
                    title: 'Natural Gas',
                    onTap: controller.navigateToNoData,
                  ),
                  BottomMenuButton(
                    icon: Icons.power,
                    title: 'D. Generator',
                    onTap: controller.navigateToNoData,
                  ),
                  BottomMenuButton(
                    icon: Icons.water_drop,
                    title: 'Water Process',
                    onTap: controller.navigateToNoData,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDataRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(color: AppColors.textSecondary, fontSize: 14),
          ),
          Text(
            ': $value',
            style: TextStyle(
              color: AppColors.textPrimary,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
