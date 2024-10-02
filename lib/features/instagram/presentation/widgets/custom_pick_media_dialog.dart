import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class CustomPickMediaDialog extends StatelessWidget {
  const CustomPickMediaDialog({
    super.key,
    this.onTapSocialMedia,
    this.onTapLocalMedia,
    required this.socailMediaText,
    required this.socailMediaImage,
  });

  final void Function()? onTapSocialMedia;
  final void Function()? onTapLocalMedia;
  final String socailMediaText;
  final String socailMediaImage;

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.w),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: onTapSocialMedia,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color:
                            isDark ? AppColors.darkGray : AppColors.blueLight,
                        borderRadius: BorderRadius.circular(11.r),
                      ),
                      child: SvgPicture.asset(
                        socailMediaImage,
                        height: 64.h,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12.h),
                Text(
                  socailMediaText,
                  style: AppStyles.style17W800.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 30.w),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: onTapLocalMedia,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color:
                            isDark ? AppColors.darkGray : AppColors.blueLight,
                        borderRadius: BorderRadius.circular(11.r),
                      ),
                      child: SvgPicture.asset(
                        Assets.imagesGaleryIcon,
                        height: 64.h,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12.h),
                Text(
                  "Gallery".tr(context: context),
                  style: AppStyles.style17W800.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
