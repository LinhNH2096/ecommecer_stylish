import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_text_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
        scaffoldBackgroundColor: AppColors.appBackground,
        primaryColor: AppColors.primary,
        brightness: Brightness.dark,
        textTheme: AppTextTheme.darkTextTheme,
        appBarTheme: const AppBarTheme(backgroundColor: AppColors.appBarBackground, scrolledUnderElevation: 0.0)
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.appBackground,
      primaryColor: AppColors.primary,
      brightness: Brightness.dark,
      textTheme: AppTextTheme.darkTextTheme,
      appBarTheme: const AppBarTheme(backgroundColor: AppColors.appBarBackground, scrolledUnderElevation: 0.0)
    );
  }

  static final BoxDecoration boxShadow = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(6.r),
    boxShadow: [
      // Shadow for the top
      BoxShadow(
        color: Colors.black.withOpacity(0.25),
        offset: const Offset(0, -4), // Top shadow
        blurRadius: 9,
        spreadRadius: -7,
      ),
      // Shadow for the bottom
      BoxShadow(
        color: Colors.black.withOpacity(0.1),
        offset: const Offset(0, 6), // Bottom shadow
        blurRadius: 14,
        spreadRadius: -8,
      ),
    ],
  );
}