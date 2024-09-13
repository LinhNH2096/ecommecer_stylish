import 'package:ecommerce_stylish_flutter/resources/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  static TextTheme lightTextTheme = TextTheme(
      displayLarge: GoogleFonts.montserrat(
          fontSize: 32,
          fontWeight: FontWeight.w600,
          color: AppColors.textPrimary),
      displayMedium: GoogleFonts.montserrat(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.textPrimary),
      displaySmall: GoogleFonts.montserrat(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: AppColors.textPrimary),
      headlineMedium: GoogleFonts.montserrat(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.textPrimary),
      headlineSmall: GoogleFonts.montserrat(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: AppColors.textPrimary),
      titleLarge: GoogleFonts.montserrat(
          fontSize: 32.0,
          fontWeight: FontWeight.w600,
          color: AppColors.textPrimary),
      titleMedium: GoogleFonts.montserrat(
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
          color: AppColors.textPrimary),
      titleSmall: GoogleFonts.montserrat(
          fontSize: 12.0,
          fontWeight: FontWeight.normal,
          color: AppColors.textPrimary));

  static TextTheme darkTextTheme = TextTheme(
      displayLarge: GoogleFonts.montserrat(
          fontSize: 32,
          fontWeight: FontWeight.w600,
          color: AppColors.textPrimary),
      displayMedium: GoogleFonts.montserrat(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.textPrimary),
      displaySmall: GoogleFonts.montserrat(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: AppColors.textPrimary),
      headlineMedium: GoogleFonts.montserrat(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.textPrimary),
      headlineSmall: GoogleFonts.montserrat(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: AppColors.textPrimary),
      titleLarge: GoogleFonts.montserrat(
          fontSize: 32.0,
          fontWeight: FontWeight.w600,
          color: AppColors.textPrimary),
      titleMedium: GoogleFonts.montserrat(
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
          color: AppColors.textPrimary),
      titleSmall: GoogleFonts.montserrat(
          fontSize: 12.0,
          fontWeight: FontWeight.normal,
          color: AppColors.textPrimary));
}