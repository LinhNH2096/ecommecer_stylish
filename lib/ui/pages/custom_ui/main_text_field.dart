import 'package:ecommerce_stylish_flutter/resources/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainTextField extends StatefulWidget {
  final String hintText;
  final String icon;
  final bool isPassword;

  const MainTextField({
    Key? key,
    required this.hintText,
    required this.icon,
    this.isPassword = false,
  }) : super(key: key);

  @override
  _MainTextFieldState createState() => _MainTextFieldState();
}

class _MainTextFieldState extends State<MainTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55.h,
      child: TextField(
        obscureText: widget.isPassword ? _obscureText : false,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.textFieldBackground,
          hintText: widget.hintText,
          prefixIcon: widget.icon.isNotEmpty
              ? Padding(
                  padding: EdgeInsets.all(10.w),
                  child: Image.asset(
                    widget.icon,
                    width: 24.w,
                    height: 24.h,
                  ),
                )
              : null,
          prefixIconConstraints: BoxConstraints(
            minWidth: 44.w,
            minHeight: 44.h,
          ),
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: AppColors.textFieldTint,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                )
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(
              color: AppColors.textFieldBorder,
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(
              color: AppColors.textFieldBorder,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(
              color: AppColors.textFieldBorder,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}
