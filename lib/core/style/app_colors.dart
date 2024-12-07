import 'package:flutter/material.dart';

@immutable
sealed class AppColors {
  static const Color blue = Color(0xFF2196F3);
  static const Color white = Color(0xFFFFFFFF);
  static const Color grey = Color(0xFF9E9E9E);
  static const Color black = Color(0xFF000000);
  static const Color red = Color(0xFFF44336);
  static const Color orange = Color(0xFFFF9800);
  static const Color amber = Color(0xFFFFC107);
  static const Color green = Color(0xFF4CAF50);

  // Core Colors
  static const Color c9FE870 = Color(0xFF9FE870); // Bright Green
  static Color c163300O08 = const Color(0xFF163300).withOpacity(0.08); // Forest Green
  static const Color c163300 = Color(0xFF163300);

  // Base Colors
  static const Color cFFFFFF = Color(0xFFFFFFFF); // Base Light & Base Contrast
  static const Color c121511 = Color(0xFF121511); // Base Dark

  // Interactive Colors
  static const Color c868685 = Color(0xFF868685); // Interactive Secondary

  // Content Colors
  static const Color c0E0F0C = Color(0xFF0E0F0C); // Content Primary
  static const Color c454745 = Color(0xFF454745); // Content Secondary
  static const Color c6A6C6A = Color(0xFF6A6C6A); // Content Tertiary

  // Secondary Colors
  static const Color cFFC091 = Color(0xFFFFC091); // Bright Orange
  static const Color cFFEB69 = Color(0xFFFFEB69); // Bright Yellow
  static const Color cA0E1E1 = Color(0xFFA0E1E1); // Bright Blue
  static const Color cFFD7EF = Color(0xFFFFD7EF); // Bright Pink
  static const Color c260A2F = Color(0xFF260A2F); // Dark Purple
  static const Color c3A341C = Color(0xFF3A341C); // Dark Gold
  static const Color c21231D = Color(0xFF21231D); // Dark Charcoal
  static const Color c320707 = Color(0xFF320707); // Dark Maroon

  // Sentiment Colors
  static const Color cEDC843 = Color(0xFFEDC843); // Sentiment Warning
  static const Color c2F5711 = Color(0xFF2F5711); // Sentiment Positive
  static const Color cA8200D = Color(0xFFA8200D); // Sentiment Negative

  static const Color c213210 = Color(0xFF213210);

  static const Color c0E0F0C1F = Color(0x0E0F0C1F);
  static const Color c0E0F0CO12 = Color.fromARGB(31, 14, 15, 12);
}
