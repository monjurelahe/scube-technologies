import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/data_view_controller.dart';
import '../../../core/values/app_colors.dart';
import '../widgets/view_toggle_button.dart';
import '../widgets/data_toggle_button.dart';
import '../widgets/energy_chart_card.dart';

class DataView extends GetView<DataViewController> {
  const DataView({super.key});

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
                          isSelected: controller.isDataView.value,
                          onTap: () => controller.toggleView(true),
                        ),
                      ),
                      Expanded(
                        child: ViewToggleButton(
                          title: 'Revenue View',
                          isSelected: !controller.isDataView.value,
                          onTap: () => controller.toggleView(false),
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
                        value: 0.55,
                        strokeWidth: 18,
                        backgroundColor: Colors.transparent,
                        valueColor: const AlwaysStoppedAnimation<Color>(
                          AppColors.primaryBlue,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '55.00',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        Text(
                          'kWh/Sqft',
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

              // Data Toggle
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DataToggleButton(
                      title: 'Today Data',
                      isSelected: controller.isTodayData.value,
                      onTap: () => controller.toggleDataType(true),
                    ),
                    const SizedBox(width: 16),
                    DataToggleButton(
                      title: 'Custom Date Data',
                      isSelected: !controller.isTodayData.value,
                      onTap: () => controller.toggleDataType(false),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Energy Chart Card
              EnergyChartCard(
                totalPower: '5.53 kw',
                dataList: [
                  {
                    'label': 'Data A',
                    'color': AppColors.chartBlue,
                    'data': '2798.50 (29.53%)',
                    'cost': '35689 ৳',
                  },
                  {
                    'label': 'Data B',
                    'color': AppColors.chartCyan,
                    'data': '72598.50 (35.39%)',
                    'cost': '5259689 ৳',
                  },
                  {
                    'label': 'Data C',
                    'color': AppColors.chartPurple,
                    'data': '6598.36 (83.90%)',
                    'cost': '5698756 ৳',
                  },
                  {
                    'label': 'Data D',
                    'color': AppColors.chartOrange,
                    'data': '6598.26 (36.59%)',
                    'cost': '356987 ৳',
                  },
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
