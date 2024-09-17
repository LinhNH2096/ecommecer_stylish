import 'package:ecommerce_stylish_flutter/resources/assets/app_image_asset.dart';
import 'package:ecommerce_stylish_flutter/resources/theme/app_text_style.dart';
import 'package:ecommerce_stylish_flutter/resources/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../resources/theme/app_colors.dart';
import '../custom_ui/shopping_item.dart';

class CheckoutPage extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      'image': AppImages.item1,
      'title': 'Hien’s Casual Wear',
      'variations': ['Red', 'Black'],
      'rating': 4.5,
      'price': 29.99,
      'quantity': 1,
      'total': 29.99,
    },
    {
      'image': AppImages.item2,
      'title': 'Tin’s Jacket',
      'variations': ['Blue', 'Green'],
      'rating': 3.5,
      'price': 19.99,
      'quantity': 2,
      'total': 39.98,
    },
    {
      'image': AppImages.item3,
      'title': 'Luan’s Jacket',
      'variations': ['Blue', 'Red'],
      'rating': 5.0,
      'price': 19.99,
      'quantity': 2,
      'total': 39.98,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Checkout',
            style: GoogleFonts.montserrat(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            )),
        centerTitle: true,
        leading: IconButton(
          icon: Image.asset(AppImages.back, width: 10.w, height: 20.h),
          onPressed: () {
            Navigator.of(context).pop(); // Handle back navigation
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(22.w, 18.h, 22.w, 0.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Delivery Address Section
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Image.asset(AppImages.location, width: 12.w, height: 15.h),
                    SizedBox(width: 10.w),
                    Text(
                      'Delivery Address',
                      style: AppTextStyles.bodyText1,
                    )
                  ]),
                  SizedBox(height: 8.h),
                  // Existing Address Info
                  Container(
                    constraints: BoxConstraints(minHeight: 80.h),
                    margin: EdgeInsets.fromLTRB(0, 10.h, 0, 16.h),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Container(
                          decoration: AppTheme.boxShadow,
                          child: Stack(
                            children: [
                              Positioned(
                                  child: Padding(
                                padding: EdgeInsets.all(12.w),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Address :",
                                          style: AppTextStyles.bodyText2),
                                      RichText(
                                          text: TextSpan(
                                              text:
                                                  "216 St Pauls Rd, London N1 2LL, UK",
                                              style: AppTextStyles.bodyText3,
                                              children: [
                                            TextSpan(
                                                text: "\nContact :  +44-784232",
                                                style: AppTextStyles.bodyText3)
                                          ]))
                                    ]),
                              )),
                              Positioned(
                                top: 8.w,
                                right: 8.w,
                                child: InkWell(
                                    child: SizedBox(
                                        width: 12.w,
                                        height: 12.w,
                                        child: Image.asset(
                                          AppImages.edit, // Your icon path
                                          width: 12.w,
                                          height: 12.w,
                                        )),
                                    onTap: () {
                                      print("Edit Address");
                                    }),
                              ),
                            ],
                          ),
                        )),
                        SizedBox(width: 12.w),
                        GestureDetector(
                          onTap: () {
                            print("Add address");
                          },
                          child: Container(
                              decoration: AppTheme.boxShadow,
                              width: 80.h,
                              constraints: BoxConstraints(minHeight: 80.h),
                              child: Center(
                                child: Image.asset(
                                  AppImages.add,
                                  width: 24.w,
                                  height: 24.w,
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                  Text(
                    'Shopping List',
                    style: AppTextStyles.bodyText1,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.fromLTRB(10.w, 0, 10.w, 10.h),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return ShoppingItem(
                    image: item['image'],
                    title: item['title'],
                    variations: List<String>.from(item['variations']),
                    rating: item['rating'],
                    price: item['price'],
                    quantity: item['quantity'],
                    total: item['total'],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
