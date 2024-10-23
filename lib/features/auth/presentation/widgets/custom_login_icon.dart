import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class CustomLoginIcon extends StatelessWidget {
  const CustomLoginIcon({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 31.w),
      child: Row(
        children: [
          Text(
            "login".tr(context: context),
            style: AppStyles.style32W700,
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.35),
          InkWell(
            onTap: onTap,
            child: Container(
              constraints: BoxConstraints(
                minHeight: 64.h,
                minWidth: 64.w,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isDark ? AppColors.loginBtn : AppColors.blueLight,
              ),
              child: context.locale == const Locale('en')
                  ? Center(
                      child: Transform.flip(
                        flipX: true,
                        child: SvgPicture.asset(
                          Assets.imagesArrowForwardLoginPage,
                        ),
                      ),
                    )
                  : Center(
                      child: SvgPicture.asset(
                        Assets.imagesArrowForwardLoginPage,
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
