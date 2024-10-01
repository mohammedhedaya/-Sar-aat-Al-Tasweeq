import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class CustomAuthBtn extends StatelessWidget {
  const CustomAuthBtn({
    super.key,
    required this.text,
    this.onPressed,
    this.backgroundColor,
  });

  final String text;
  final void Function()? onPressed;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        // backgroundColor: backgroundColor ?? AppColors.blackColor,
        backgroundColor: isDark ? AppColors.blackColor : AppColors.blueLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.r),
        ),
        minimumSize: Size(double.infinity, 45.h),
      ),
      child: Text(
        text,
        style: AppStyles.style14W600.copyWith(
          color: isDark ? AppColors.whiteColor : AppColors.whiteColor,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
