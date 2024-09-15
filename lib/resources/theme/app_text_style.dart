import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTextStyles {
  // Headline1
  static final TextStyle headline1 = GoogleFonts.montserrat(
    fontSize: 36,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
  );

  // Headline2
  static final TextStyle headline2 = GoogleFonts.montserrat(
    fontSize: 24,
    fontWeight: FontWeight.w800,
    color: AppColors.textPrimary,
  );

  // BodyText1
  static final TextStyle bodyText1 = GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.textSecondary
  );

  // BodyText2
  static final TextStyle bodyText2 = GoogleFonts.montserrat(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.textSecondary,
  );

  // Button
  static final TextStyle titleMainButton = GoogleFonts.montserrat(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}