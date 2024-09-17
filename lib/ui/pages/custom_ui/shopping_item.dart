import 'package:ecommerce_stylish_flutter/resources/theme/app_colors.dart';
import 'package:ecommerce_stylish_flutter/resources/theme/app_text_style.dart';
import 'package:ecommerce_stylish_flutter/resources/theme/theme.dart';
import 'package:ecommerce_stylish_flutter/ui/pages/custom_ui/star_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Optional for responsive UI
import 'package:google_fonts/google_fonts.dart';

class ShoppingItem extends StatelessWidget {
  final String image;
  final String title;
  final List<String> variations;
  final double rating;
  final double price;
  final int quantity;
  final double total;

  ShoppingItem({
    required this.image,
    required this.title,
    required this.variations,
    required this.rating,
    required this.price,
    required this.quantity,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Column(
        children: [
          Container(
            decoration: AppTheme.boxShadow,
            padding: EdgeInsets.all(10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Info Item Row
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Item Image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4.r),
                      child: Image.asset(
                        image,
                        width: 131.w,
                        height: 125.w,
                        fit: BoxFit.cover,
                      ),
                    ),

                    SizedBox(width: 10.w),
                    // Spacing between image and text content

                    // Title, Variations, Rating, Price
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 8.h),
                          Text(
                            title,
                            style: AppTextStyles.titleText1,
                          ),
                          SizedBox(height: 4.h),
                          Wrap(
                            spacing: 4.w,
                            runSpacing: 4.h,
                            children: [
                              Text(
                                'Variations:',
                                style: AppTextStyles.bodyText2,
                              ),
                              SizedBox(width: 2.w),
                              Wrap(
                                spacing: 4.w,
                                runSpacing: 4.h,
                                children: variations
                                    .map((variation) => Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 6.w, vertical: 1.h),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color:
                                                  Colors.black, // Border color
                                              width: 0.3, // Border width
                                            ),
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(2.r),
                                          ),
                                          child: Text(
                                            variation,
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              color: Colors.black54,
                                            ),
                                          ),
                                        ))
                                    .toList(),
                              )
                            ],
                          ),

                          SizedBox(height: 6.h),

                          // Rating (Star)
                          Row(
                            children: [
                              Text('$rating', style: AppTextStyles.bodyText2),
                              SizedBox(width: 6.h),
                              StarRating(rating: rating)
                            ],
                          ),

                          SizedBox(height: 4.h),
                          // Price
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 14.w, vertical: 6.w),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color:
                                          AppColors.grayBorder, // Border color
                                      width: 0.3, // Border width
                                    ),
                                    borderRadius: BorderRadius.circular(4.r)),
                                child: Center(
                                    child: Text(
                                  '\$ $price',
                                  style: AppTextStyles.headline3,
                                )),
                              ),
                              SizedBox(width: 10.w),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('upto 33% off',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 8.sp,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.primary,
                                        )),
                                    Text('\$67.00',
                                        style: GoogleFonts.montserrat(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.textSecondary,
                                        ))
                                  ])
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10.h),

                // Line Divider
                const Divider(color: AppColors.divider),

                // Total Price
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Order(1):',
                        style: AppTextStyles.bodyText2,
                      ),
                      Text(
                        'Total: \$${total.toStringAsFixed(2)}',
                        style: AppTextStyles.bodyText1,
                      )
                    ]),
              ],
            ),
          )
        ],
      ),
    );
  }
}
