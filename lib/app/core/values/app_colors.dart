import 'package:flutter/material.dart';

class AppColors {
  // Primary Colors
  static const Color primaryBlue = Color(0xFF4A90E2);
  static const Color lightBlue = Color(0xFF6BB6FF);
  static const Color darkBlue = Color(0xFF2E5C8A);

  // Background Colors
  static const Color lightBackground = Color(0xFFF0F4F8);
  static const Color cardBackground = Color(0xFFFFFFFF);
  static const Color greyBackground = Color(0xFFE8EEF3);

  // Text Colors
  static const Color textPrimary = Color(0xFF1A1A1A);
  static const Color textSecondary = Color(0xFF757575);
  static const Color textGrey = Color(0xFF9E9E9E);

  // Chart Colors
  static const Color chartBlue = Color(0xFF4A90E2);
  static const Color chartCyan = Color(0xFF5FC9F8);
  static const Color chartPurple = Color(0xFF9B59B6);
  static const Color chartOrange = Color(0xFFFF9F43);

  // Status Colors
  static const Color activeGreen = Color(0xFF4CAF50);
  static const Color inactiveGrey = Color(0xFFBDBDBD);
  static const Color errorRed = Color(0xFFE74C3C);

  // Additional Colors
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color borderGrey = Color(0xFFE0E0E0);
  static const Color shadowColor = Color(0x1A000000);

  // Gradient
  static const LinearGradient blueGradient = LinearGradient(
    colors: [Color(0xFF4A90E2), Color(0xFF6BB6FF)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
