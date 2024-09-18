import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class CustomAuthBtn extends StatelessWidget {
  const CustomAuthBtn({
    super.key,
    required this.text,
    this.onPressed,
  });

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.blackColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.r),
        ),
        minimumSize: Size(double.infinity, 45.h),
      ),
      child: Text(
        text,
        style: AppStyles.style14W600,
        textAlign: TextAlign.center,
      ),
    );
  }
}
