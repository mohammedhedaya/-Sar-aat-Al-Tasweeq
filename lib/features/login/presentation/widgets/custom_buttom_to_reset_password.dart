import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';

class CustomButtomToResetPassword extends StatelessWidget {
  const CustomButtomToResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10.h, // Use ScreenUtil for bottom padding
      left: 0,
      right: 0,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w), // Use ScreenUtil for horizontal padding
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                // Define the action for "Create Account" button
              },
              child: Text(
                "إنشاء حساب",
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 18.sp, // Use ScreenUtil for font size
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w, // Use ScreenUtil for horizontal padding
                vertical: 1.h, // Use ScreenUtil for vertical padding
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(8.r), // Use ScreenUtil for border radius
              ),
              child: TextButton(
                onPressed: () {
                  GoRouter.of(context).push('/resetPassword');
                },
                child: Text(
                  "نسيت كلمة المرور",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp, // Use ScreenUtil for font size
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
