import 'package:country_code_picker/country_code_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class CustomItemIncludeCountry extends StatelessWidget {
  const CustomItemIncludeCountry({super.key});

  @override
  Widget build(BuildContext context) {
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
                  color: AppColors.whiteColor,
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
                ),
                child: CountryCodePicker(
                  onChanged: (value) {},
                  initialSelection: 'SA',
                  favorite: const ['+966', 'SA'],
                  barrierColor: const Color(0xfffff9f9).withOpacity(0.33),
                  textOverflow: TextOverflow.ellipsis,
                  boxDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  showCountryOnly: true,
                  showOnlyCountryWhenClosed: true,
                  showFlagDialog: true,
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
                  color: AppColors.whiteColor,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 8.h),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.whiteColor.withOpacity(0.10),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: TextFormField(
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
