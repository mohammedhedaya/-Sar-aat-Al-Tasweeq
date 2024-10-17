import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class CustomEditProfileItemIncludeCountry extends StatelessWidget {
  const CustomEditProfileItemIncludeCountry({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;

    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "country".tr(context: context),
                style: AppStyles.style12W400.copyWith(
                  color: isDark ? AppColors.whiteColor : AppColors.blackColor,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 9.h),
              Container(
                height: 60.h,
                width: double.infinity,
                padding: EdgeInsets.only(right: 16.w),
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
                child:
                    //  Center(
                    //   child: Text(
                    //     "المملكة العربية السعودية",
                    //     style: AppStyles.style14W400,
                    //   ),
                    // ),
                    CountryCodePicker(
                  onChanged: (value) {},
                  initialSelection: 'SA',
                  favorite: const ['+966', 'SA'],
                  barrierColor: const Color(0xfffff9f9).withOpacity(0.33),
                  textOverflow: TextOverflow.ellipsis,
                  boxDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  alignLeft: true,
                  padding: EdgeInsets.zero,
                  showCountryOnly: true,
                  showOnlyCountryWhenClosed: true,
                  showFlagDialog: true,
                  showDropDownButton: true,
                  flagDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 4.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "city".tr(context: context),
                style: AppStyles.style12W400.copyWith(
                  color: isDark ? AppColors.whiteColor : AppColors.blackColor,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 8.h),
              Container(
                height: 60.h,
                width: double.infinity,
                padding: EdgeInsets.only(right: 16.w),
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
                child:
                    // Center(
                    //   child: Text(
                    //     "الرياض",
                    //     style: AppStyles.style18W400,
                    //   ),
                    // ),
                    TextFormField(
                  initialValue: 'الرياض',
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 12,
                    ),
                  ),
                  style: AppStyles.style18W400,
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
