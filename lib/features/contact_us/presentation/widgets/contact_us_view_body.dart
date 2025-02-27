import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/assets.dart';
import 'contact_us_item.dart';

class ContactUsViewBody extends StatelessWidget {
  const ContactUsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        !isDark
            ? Positioned(
                top: -MediaQuery.of(context).size.height * 0.13,
                child: Image.asset(
                  Assets.imagesFrameBGLight,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              )
            : const SizedBox.shrink(),
        Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.25),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 35.w),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: isDark ? const Color(0xffABABAB) : AppColors.blueLight,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.r),
                    topRight: Radius.circular(25.r),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    ContactUsItem(
                      onTap: () {},
                      title: "contactUsViaWhatsapp".tr(context: context),
                      icon: Assets.imagesWhatsapp,
                    ),
                    const Divider(
                      color: AppColors.whiteColor,
                      height: 1,
                      thickness: 1,
                    ),
                    ContactUsItem(
                      onTap: () {},
                      title: "contactUsViaPhone".tr(context: context),
                      icon: Assets.imagesPhone,
                    ),
                    SizedBox(height: 25.h),
                    Image.asset(
                      Assets.imagesApplogo,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
