import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';

class HelloAndChangeLang extends StatelessWidget {
  const HelloAndChangeLang({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 80,
      left: 0,
      right: 0,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "English",
              style: TextStyle(
                fontSize: 23,
                color: AppColors.whiteColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "مرحباً",
              style: TextStyle(
                fontSize: 46,
                color: AppColors.whiteColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
