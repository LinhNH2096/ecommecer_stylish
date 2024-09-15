import 'package:ecommerce_stylish_flutter/resources/theme/app_colors.dart';
import 'package:ecommerce_stylish_flutter/resources/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Custom MainButton
class MainButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const MainButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55.h,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.r),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: AppTextStyles.titleMainButton,
        ),
      ),
    );
  }
}