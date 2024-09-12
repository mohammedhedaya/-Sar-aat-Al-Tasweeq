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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "الدوله",
                style: AppStyles.style12W400.copyWith(color: AppColors.whiteColor, fontSize: 12),
                textAlign: TextAlign.right,
              ),
              SizedBox(height: 8.h),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 60.h,
                  decoration: const BoxDecoration(
                    color: AppColors.dimGray,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.keyboard_arrow_down,
                        color: AppColors.whiteColor,
                      ),
                      SizedBox(width: 6.w),
                      Expanded(
                        child: Text(
                          'المملكة العربية السعودية',
                          style: AppStyles.style18W400,
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 6.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "المدينه",
                style: AppStyles.style12W400.copyWith(color: AppColors.whiteColor, fontSize: 12),
                textAlign: TextAlign.right,
              ),
              SizedBox(height: 8.h),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 60.h,
                  decoration: const BoxDecoration(
                    color: AppColors.dimGray,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.keyboard_arrow_down,
                        color: AppColors.whiteColor,
                      ),
                      SizedBox(width: 6.w),
                      Expanded(
                        child: Text(
                          'الرياض',
                          style: AppStyles.style18W400,
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
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
