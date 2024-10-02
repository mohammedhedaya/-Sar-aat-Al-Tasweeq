import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class CustomIncludeEmail extends StatelessWidget {
  const CustomIncludeEmail({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "email".tr(context: context),
                style: AppStyles.style12W400.copyWith(
                  color: isDark ? AppColors.whiteColor : AppColors.blackColor,
                ),
                textAlign: TextAlign.start,
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
                  border: isDark
                      ? null
                      : Border.all(
                          color: AppColors.blueLight,
                        ),
                ),
                child: Center(
                  child: Text(
                    'faisal_abdelaziz@yahoo.com',
                    style: AppStyles.style18W400,
                    textAlign: TextAlign.center,
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
