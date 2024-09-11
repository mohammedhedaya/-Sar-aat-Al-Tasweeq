import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';

class HelloAndChangeLang extends StatelessWidget {
  const HelloAndChangeLang({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 35.h,
      left: 0,
      right: 0,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: Text(
                "English",
                style: AppStyles.style23W700,
              ),
            ),
            Text(
              "مرحباً",
              style: AppStyles.style46W400,
            ),
          ],
        ),
      ),
    );
  }
}
