import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

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
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
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
                  color: isDark ? AppColors.whiteColor : AppColors.blueLight,
                ),
              ),
            ),
            Flexible(
              child: Text(
                value,
                style: AppStyles.style20W900.copyWith(
                  fontSize: 13.sp,
                  color: textcolor ??
                      (isDark ? AppColors.whiteColor : AppColors.blueLight),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 4.h),
        LinearProgressIndicator(
          value: progress,
          backgroundColor:
              isDark ? const Color(0xff3F3F3F) : AppColors.whiteColor,
          color:
              color ?? (isDark ? const Color(0xffD9D9D9) : AppColors.blueLight),
          minHeight: 11.h,
        ),
      ],
    );
  }
}
