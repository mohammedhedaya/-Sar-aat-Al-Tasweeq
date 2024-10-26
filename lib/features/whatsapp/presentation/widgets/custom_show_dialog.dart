import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/assets.dart';
import '../../../../core/utils/app_text_style.dart';

class CustomShowDialog extends StatelessWidget {
  const CustomShowDialog({
    super.key,
    this.content,
    required this.image,
    required this.textButton,
    this.onTap,
  });

  final String image;
  final String textButton;
  final Widget? content;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.r),
      ),
      title: SvgPicture.asset(
        image,
      ),
      content: content,
      actions: [
        InkWell(
          onTap: onTap,
          child: Center(
            child: Container(
              height: 31.h,
              width: 119.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                color: isDark ? null : const Color(0xffEDE8E9),
                gradient: isDark
                    ? const LinearGradient(
                        colors: [
                          Color(0xff00C0CC),
                          Color(0xff006066),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      )
                    : null,
              ),
              child: Center(
                child: Text(
                  textButton,
                  style: AppStyles.style14W700.copyWith(
                    color: isDark ? Colors.white : AppColors.blueLight,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomShowRechargeDialog extends StatelessWidget {
  const CustomShowRechargeDialog({
    super.key,
    this.onTap,
    this.content,
    this.colorFilter,
  });
  final void Function()? onTap;
  final Widget? content;
  final ColorFilter? colorFilter;
  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.r),
      ),
      title: InkWell(
        onTap: () {
          context.push("/diamondWallet");
        },
        child: SvgPicture.asset(
          Assets.imagesRechargeWallet,
          colorFilter: colorFilter ??
              ColorFilter.mode(
                isDark ? const Color(0xff00C0CC) : AppColors.yellowLight,
                BlendMode.srcIn,
              ),
        ),
      ),
      content: content ??
          Text(
            "recharge".tr(context: context),
            style: AppStyles.style32W700.copyWith(
              color: isDark ? null : AppColors.whiteColor,
            ),
            textAlign: TextAlign.center,
          ),
      actions: [
        InkWell(
          onTap: onTap,
          child: Center(
            child: Container(
              height: 31.h,
              width: 119.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                color: isDark ? null : AppColors.whiteColor,
                gradient: isDark
                    ? const LinearGradient(
                        colors: [
                          Color(0xff00C0CC),
                          Color(0xff006066),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      )
                    : null,
              ),
              child: Center(
                child: Text(
                  "next".tr(context: context),
                  style: AppStyles.style14W700.copyWith(
                    color: isDark ? Colors.white : AppColors.blueLight,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
