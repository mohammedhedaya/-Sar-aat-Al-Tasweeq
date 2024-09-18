import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class CustomItemIncludeCountry extends StatelessWidget {
  const CustomItemIncludeCountry({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "الدوله",
                style: AppStyles.style12W400.copyWith(
                  color: AppColors.whiteColor,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 9.h),
              Container(
                height: 60.h,
                padding: EdgeInsets.only(right: 16.w),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor.withOpacity(0.10),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.r),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'المملكة العربية السعودية',
                        style: AppStyles.style14W400,
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(width: 5.w),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      color: AppColors.whiteColor,
                      size: 35,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 4.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "المدينة",
                style: AppStyles.style12W400.copyWith(
                  color: AppColors.whiteColor,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 8.h),
              Container(
                height: 60.h,
                padding: EdgeInsets.only(right: 16.w),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor.withOpacity(0.10),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.r),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'الرياض',
                        style: AppStyles.style18W400,
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(width: 5.w),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      color: AppColors.whiteColor,
                      size: 35,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
