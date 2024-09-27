import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import 'custom_buttom_save_and_exit.dart';
import 'custom_item_include_country.dart';

class EditItemProfile extends StatelessWidget {
  const EditItemProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "first_name".tr(context: context),
                      style: AppStyles.style12W400Edite,
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 9.h),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor.withOpacity(0.10),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: TextFormField(
                        initialValue: 'فيصل',
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
              SizedBox(width: 9.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "second_name".tr(context: context),
                      style: AppStyles.style12W400Edite,
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 9.h),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor.withOpacity(0.10),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: TextFormField(
                        initialValue: 'عبدالعزيز',
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
          ),
          SizedBox(height: 30.h),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "last_name".tr(context: context),
                      style: AppStyles.style12W400Edite,
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 9.h),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor.withOpacity(0.10),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: TextFormField(
                        initialValue: 'ال سعود',
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 12),
                        ),
                        style: AppStyles.style18W400,
                        textAlign: TextAlign.start,
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "phone".tr(context: context),
                  style: AppStyles.style12W400Edite,
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.whiteColor.withOpacity(0.10),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: TextFormField(
                  initialValue: '0501234567',
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "966",
                          style: AppStyles.style18W400,
                        ),
                        const Icon(
                          Icons.keyboard_arrow_down,
                          color: AppColors.whiteColor,
                        ),
                      ],
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 15.h,
                      horizontal: 12.w,
                    ),
                  ),
                  style: AppStyles.style18W400,
                ),
              ),
            ],
          ),
          SizedBox(height: 30.h),
          const CustomItemIncludeCountry(),
          SizedBox(height: 30.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "email".tr(context: context),
                style: AppStyles.style12W400Edite,
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 9.h),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.whiteColor.withOpacity(0.10),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: TextFormField(
                  initialValue: 'faisal_abdelaziz@yahoo.com',
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 12),
                  ),
                  style: AppStyles.style18W400,
                ),
              ),
              SizedBox(height: 30.h),
              const CustomButtomSaveAndExit(),
              SizedBox(height: 25.h),
            ],
          ),
        ],
      ),
    );
  }
}
