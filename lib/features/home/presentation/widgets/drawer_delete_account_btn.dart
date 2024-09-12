import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';

class DrawerDeletAccountBtn extends StatelessWidget {
  const DrawerDeletAccountBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 10.h,
        right: 20.w,
        left: 34.w,
        bottom: 20.h,
      ),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
          backgroundColor: AppColors.redColor,
        ),
        child: Text(
          "حذف الحساب",
          style: AppStyles.style14W600,
        ),
      ),
    );
  }
}
