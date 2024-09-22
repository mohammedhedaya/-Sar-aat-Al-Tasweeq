import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class CustomSubscribeBtn extends StatelessWidget {
  const CustomSubscribeBtn({
    super.key,
    this.onPressed,
    required this.text,
    this.textStyle,
  });
  final void Function()? onPressed;
  final String text;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        elevation: 0,
        minimumSize: Size(double.infinity, 60.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
        backgroundColor: AppColors.whiteColor.withOpacity(0.10),
      ),
      child: Text(
        text,
        style: textStyle ??
            AppStyles.style14W400.copyWith(
              color: const Color(0xffBABABA),
            ),
      ),
    );
  }
}
