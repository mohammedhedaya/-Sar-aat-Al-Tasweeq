import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class CustomIncludeEmail extends StatelessWidget {
  const CustomIncludeEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "الإيميل",
                style: AppStyles.style12W400.copyWith(
                  color: AppColors.whiteColor,
                ),
                textAlign: TextAlign.right,
              ),
              SizedBox(height: 9.h),
              Container(
                height: 60.h,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor.withOpacity(0.10),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.r),
                  ),
                ),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'faisal_abdelaziz@yahoo.com',
                    style: AppStyles.style18W400,
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
