import 'package:ecommerce_stylish_flutter/resources/theme/app_colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../resources/assets/app_image_asset.dart';
import '../custom_ui/main_button.dart';
import '../custom_ui/main_text_field.dart';
import '../custom_ui/social_login_button.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: ScreenUtil().screenHeight,
          child: Padding(
            padding: EdgeInsets.all(32.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                Text(
                  'Forgot\npassword?',
                  style: GoogleFonts.montserrat(
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.textPrimary),
                ),
                SizedBox(height: 20.h),
                const MainTextField(
                  hintText: 'Enter your email address',
                  icon: AppImages.mail,
                ),
                SizedBox(height: 10.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                      text: '* ',
                      style: GoogleFonts.montserrat(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.primary,
                      ),
                      children: [
                        TextSpan(
                            text:
                                'We will send you a message to set or reset your new password',
                            style: GoogleFonts.montserrat(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors.textSecondary))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 36.h),
                // Login Button
                MainButton(
                  title: 'Submit',
                  onPressed: () {
                    // Handle login logic
                    print('Submit pressed');
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
