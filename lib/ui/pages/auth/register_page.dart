import 'package:ecommerce_stylish_flutter/resources/theme/app_colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../resources/assets/app_image_asset.dart';
import '../custom_ui/main_button.dart';
import '../custom_ui/main_text_field.dart';
import '../custom_ui/social_login_button.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(32.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                Text('Create an\naccount',
                    style: GoogleFonts.montserrat(
                        fontSize: 32.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textPrimary)),
                SizedBox(height: 20.h),
                const MainTextField(
                  hintText: 'Username or Email',
                  icon: AppImages.user,
                ),
                SizedBox(height: 20.h),
                const MainTextField(
                    hintText: 'Password',
                    icon: AppImages.lock,
                    isPassword: true),
                SizedBox(height: 20.h),
                const MainTextField(
                    hintText: 'Confirm Password',
                    icon: AppImages.lock,
                    isPassword: true),
                // Spacing before the button
                SizedBox(height: 12),
                Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                      text: 'By clicking the ',
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textSecondary,
                      ),
                      children: [
                        TextSpan(
                            text: 'Register',
                            style: GoogleFonts.montserrat(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors.primary)),
                        TextSpan(
                            text: ' button, you agree to the public offer',
                            style: GoogleFonts.montserrat(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.textSecondary,
                            ))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 26.h),
                // Login Button
                MainButton(
                  title: 'Create Account',
                  onPressed: () {
                    // Handle login logic
                    print('Create Account pressed');
                  },
                ),
                SizedBox(height: 40.h),
                Center(
                    child: Text('- OR Continue with -',
                        style: GoogleFonts.montserrat(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textSecondary,
                        ))),
                SizedBox(height: 20.w),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  SocialLoginButton(
                      iconPath: AppImages.google, onPressed: () {}),
                  SizedBox(width: 10.w),
                  SocialLoginButton(
                      iconPath: AppImages.apple, onPressed: () {}),
                  SizedBox(width: 10.w),
                  SocialLoginButton(
                      iconPath: AppImages.facebook, onPressed: () {})
                ]),
                SizedBox(height: 20.w),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'I Already Have an Account ',
                      style: GoogleFonts.montserrat(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textSecondary,
                      ),
                      children: [
                        TextSpan(
                          text: 'Login',
                          style: GoogleFonts.montserrat(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
                              color: AppColors.primary),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context).pop();
                            },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
