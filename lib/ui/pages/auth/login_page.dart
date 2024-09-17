import 'package:ecommerce_stylish_flutter/resources/theme/app_colors.dart';
import 'package:ecommerce_stylish_flutter/router/route_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../resources/assets/app_image_asset.dart';
import '../custom_ui/main_button.dart';
import '../custom_ui/main_text_field.dart';
import '../custom_ui/social_login_button.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
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
                  'Welcome\nBack!',
                  style: GoogleFonts.montserrat(
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.textPrimary),
                ),
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
                // Spacing before the button
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        FORGOT_PASSWORD_PATH,
                      );
                    },
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                // Login Button
                MainButton(
                  title: 'Login',
                  onPressed: () {
                    // Handle login logic
                    print('Login pressed');
                    Navigator.of(context).pushNamed(CHECKOUT_PATH);
                  },
                ),
                Expanded(
                    child: Center(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                      Text('- OR Continue with -',
                          style: GoogleFonts.montserrat(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.textSecondary,
                          )),
                      SizedBox(height: 20.w),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
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
                            text: 'Create An Account ',
                            style: GoogleFonts.montserrat(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.textSecondary,
                            ),
                            children: [
                              TextSpan(
                                text: 'Sign Up',
                                style: GoogleFonts.montserrat(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.underline,
                                    color: AppColors.primary),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // Handle navigation to Sign Up screen
                                    Navigator.of(context).pushNamed(
                                      REGISTER_PATH,
                                    );
                                  },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ])))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
