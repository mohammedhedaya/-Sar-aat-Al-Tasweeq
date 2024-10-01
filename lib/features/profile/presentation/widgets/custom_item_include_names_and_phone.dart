import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_include_email.dart';
import 'custom_subscription_date_and_buttom.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import 'custom_item_include_country.dart';

class CustomProfileData extends StatelessWidget {
  const CustomProfileData({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "first_name".tr(context: context),
                      style: AppStyles.style12W400.copyWith(
                        color: isDark
                            ? AppColors.whiteColor
                            : AppColors.blackColor,
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
                          Radius.circular(10.r),
                        ),
                        border: isDark
                            ? null
                            : Border.all(
                                color: AppColors.blueLight,
                              ),
                      ),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'فيصل',
                          style: AppStyles.style18W400,
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 9.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "second_name".tr(context: context),
                      style: AppStyles.style12W400.copyWith(
                        color: isDark
                            ? AppColors.whiteColor
                            : AppColors.blackColor,
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
                          Radius.circular(10.r),
                        ),
                        border: isDark
                            ? null
                            : Border.all(
                                color: AppColors.blueLight,
                              ),
                      ),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'عبدالعزيز',
                          style: AppStyles.style18W400,
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 30.h),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "third_name".tr(context: context),
                      style: AppStyles.style12W400.copyWith(
                          color: isDark
                              ? AppColors.whiteColor
                              : AppColors.blackColor,
                          fontSize: 12),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 9.h),
                    Container(
                      height: 60.h,
                      padding: EdgeInsets.only(right: 16.w),
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor.withOpacity(0.10),
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                        border: isDark
                            ? null
                            : Border.all(
                                color: AppColors.blueLight,
                              ),
                      ),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'آل سعود',
                          style: AppStyles.style18W400,
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: SizedBox(),
              ),
            ],
          ),
          SizedBox(height: 30.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "phone".tr(context: context),
                style: AppStyles.style12W400.copyWith(
                  color: isDark ? AppColors.whiteColor : AppColors.blackColor,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 9.h),
              context.locale.languageCode == 'en'
                  ? Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 60.h,
                            padding: EdgeInsets.only(right: 16.w),
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor.withOpacity(0.10),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.r),
                                bottomLeft: Radius.circular(20.r),
                              ),
                              border: isDark
                                  ? null
                                  : Border.all(
                                      color: AppColors.blueLight,
                                    ),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                '5522335521',
                                style: AppStyles.style18W400,
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 60.h,
                          padding: EdgeInsets.all(6.w),
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor.withOpacity(0.20),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20.r),
                              bottomRight: Radius.circular(20.r),
                            ),
                            border: isDark
                                ? null
                                : Border.all(
                                    color: AppColors.blueLight,
                                  ),
                          ),
                          child: Row(
                            children: [
                              Text(
                                '966',
                                style: AppStyles.style18W400,
                                textAlign: TextAlign.start,
                              ),
                              const Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: AppColors.whiteColor,
                                size: 35,
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 60.h,
                            padding: EdgeInsets.only(right: 16.w),
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor.withOpacity(0.10),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20.r),
                                bottomRight: Radius.circular(20.r),
                              ),
                              border: isDark
                                  ? null
                                  : Border.all(
                                      color: AppColors.blueLight,
                                    ),
                            ),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                '5522335521',
                                style: AppStyles.style18W400,
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 60.h,
                          padding: EdgeInsets.all(6.w),
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor.withOpacity(0.20),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.r),
                              bottomLeft: Radius.circular(20.r),
                            ),
                            border: isDark
                                ? null
                                : Border.all(
                                    color: AppColors.blueLight,
                                  ),
                          ),
                          child: Row(
                            children: [
                              Text(
                                '966',
                                style: AppStyles.style18W400,
                                textAlign: TextAlign.start,
                              ),
                              Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: isDark
                                    ? AppColors.whiteColor
                                    : AppColors.blackColor,
                                size: 35,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
            ],
          ),
          SizedBox(height: 30.h),
          const CustomItemIncludeCountry(),
          SizedBox(height: 30.h),
          const CustomIncludeEmail(),
          SizedBox(height: 15.h),
          const CustomSubscriptionDateAndBtns(),
        ],
      ),
    );
  }
}
