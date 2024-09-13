import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_text_theme.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      primaryColor: AppColors.primary,
      brightness: Brightness.light,
      textTheme: AppTextTheme.lightTextTheme,
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      primaryColor: AppColors.primary,
      brightness: Brightness.dark,
      textTheme: AppTextTheme.darkTextTheme,
    );
  }
}