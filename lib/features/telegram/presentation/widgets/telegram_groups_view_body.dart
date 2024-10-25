import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_colors.dart';

import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class TelegramGroupsViewBody extends StatelessWidget {
  const TelegramGroupsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 37.h),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Padding(
              padding: EdgeInsetsDirectional.only(start: 13.w),
              child: Text(
                "Expandyoursalesrange".tr(context: context),
                style: AppStyles.style21W900.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          SizedBox(height: 37.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              children: List.generate(
                10,
                (index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 26.h),
                    child: ListTile(
                      tileColor: isDark ? null : AppColors.fillLight,
                      onTap: () {
                        context.push("/telegramGroupsDetailsView");
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.r),
                        side: BorderSide(
                          color: isDark ? Colors.white : AppColors.blueLight,
                          width: 1,
                        ),
                      ),
                      title: Text(
                        "مجموعات المملكة العربية السعودية",
                        style: AppStyles.style14W700,
                      ),
                      leading: SvgPicture.asset(
                        Assets.imagesSuadiFlag,
                        height: 44.h,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 25.h),
        ],
      ),
    );
  }
}
