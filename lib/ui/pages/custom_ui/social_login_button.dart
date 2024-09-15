import 'package:ecommerce_stylish_flutter/resources/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialLoginButton extends StatelessWidget {
  final String iconPath;
  final VoidCallback onPressed;

  const SocialLoginButton({
    Key? key,
    required this.iconPath,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 55.w,
        height: 55.h,
        decoration: BoxDecoration(
          color: AppColors.socialButtonBackground,
          shape: BoxShape.circle,
          border: Border.all(
            color: AppColors.primary,
            width: 1.w,
          ),
        ),
        child: Center(
          child: Image.asset(
            iconPath,
            width: 26.w,
            height: 26.h,
          ),
        ),
      ),
    );
  }
}