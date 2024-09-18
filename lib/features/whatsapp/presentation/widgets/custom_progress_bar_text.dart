import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';

class CustomProgressBarAndText extends StatelessWidget {
  const CustomProgressBarAndText({
    super.key,
    required this.label,
    required this.value,
    required this.progress,
    this.color,
    this.textcolor,
  });

  final String label;
  final String value;
  final double progress;
  final Color? color;
  final Color? textcolor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                label,
                style: AppStyles.style20W900.copyWith(
                  fontSize: 11.sp,
                ),
              ),
            ),
            Flexible(
              child: Text(
                value,
                style: AppStyles.style20W900.copyWith(
                  fontSize: 13.sp,
                  color: textcolor ?? AppColors.whiteColor,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 4.h),
        LinearProgressIndicator(
          value: progress,
          backgroundColor: const Color(0xff3F3F3F),
          color: color ?? const Color(0xffD9D9D9),
          minHeight: 11.h,
        ),
      ],
    );
  }
}
