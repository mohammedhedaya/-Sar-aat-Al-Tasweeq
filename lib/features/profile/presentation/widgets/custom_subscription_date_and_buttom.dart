import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class CustomSubscriptionDateAndBtns extends StatelessWidget {
  const CustomSubscriptionDateAndBtns({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "subscription_date".tr(context: context),
                      style: AppStyles.style14W400.copyWith(
                        color: isDark ? Colors.white : AppColors.blueLight,
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      "2/2/1445",
                      style: AppStyles.style14W400.copyWith(
                        color: isDark ? Colors.white : AppColors.blueLight,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 7.h),
                Row(
                  children: [
                    Text(
                      "expiration_date".tr(context: context),
                      style: AppStyles.style14W400.copyWith(
                        color: isDark ? Colors.white : AppColors.blueLight,
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      "2/4/1445",
                      style: AppStyles.style14W400.copyWith(
                        color: isDark ? Colors.white : AppColors.blueLight,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 24.h),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).push('/profileChangePasswordView');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: isDark ? Colors.white : AppColors.blueLight,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                child: Text(
                  "change_password".tr(context: context),
                  style: AppStyles.style14W600Profile.copyWith(
                    color: isDark ? AppColors.blackColor : Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).push('/editProfileView');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      isDark ? Colors.teal : const Color(0xffB99C3D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                child: Text(
                  "edit_profile".tr(context: context),
                  style: AppStyles.style14W600.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 24.h),
      ],
    );
  }
}
