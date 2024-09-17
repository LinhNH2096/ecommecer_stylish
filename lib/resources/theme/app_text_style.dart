import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  // Headline1
  static final TextStyle headline1 = GoogleFonts.montserrat(
    fontSize: 36.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
  );

  // Headline2
  static final TextStyle headline2 = GoogleFonts.montserrat(
    fontSize: 24.sp,
    fontWeight: FontWeight.w800,
    color: AppColors.textPrimary,
  );

  // Headline3
  static final TextStyle headline3 = GoogleFonts.montserrat(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  // TitleText1
  static final TextStyle titleText1 = GoogleFonts.montserrat(
      fontSize: 14.sp,
      fontWeight: FontWeight.w600,
      color: AppColors.textPrimary
  );

  // BodyText1
  static final TextStyle bodyText1 = GoogleFonts.montserrat(
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary
  );

  // BodyText2
  static final TextStyle bodyText2 = GoogleFonts.montserrat(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  // BodyText2
  static final TextStyle bodyText3 = GoogleFonts.montserrat(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
  );
// TagText1
  static final TextStyle tagText1 = GoogleFonts.montserrat(
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  // Button
  static final TextStyle titleMainButton = GoogleFonts.montserrat(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}