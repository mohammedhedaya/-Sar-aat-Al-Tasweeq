import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class CreateAccountAndResetPassword extends StatelessWidget {
  const CreateAccountAndResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;

    return Positioned(
      bottom: 30.h,
      left: 0,
      right: 0,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                context.push('/resetPasswordView');
              },
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r),
                ),
              ),
              child: Text(
                "forget_password".tr(context: context),
                style: AppStyles.style18W300.copyWith(
                  color: isDark ? AppColors.whiteColor : AppColors.blackColor,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                GoRouter.of(context).push('/signUpView');
              },
              child: Text(
                "signup".tr(),
                style: AppStyles.style18W900.copyWith(
                  color: isDark ? AppColors.blackColor : AppColors.whiteColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
