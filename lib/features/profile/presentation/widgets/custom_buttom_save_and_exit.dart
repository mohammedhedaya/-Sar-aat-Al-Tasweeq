import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class CustomButtomSaveAndExit extends StatelessWidget {
  const CustomButtomSaveAndExit({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {
            // GoRouter.of(context).push('/changePassword');
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 10.h),
            backgroundColor: AppColors.greenColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          child: Text(
            'حفظ',
            style: AppStyles.style14W600,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            // GoRouter.of(context).push('/editProfile');
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 10.h),
            backgroundColor:AppColors.redColor, // Background color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          child: Text(
            'إلغاء',
            style: AppStyles.style14W600,
          ),
        ),
      ],
    );
  }
}
