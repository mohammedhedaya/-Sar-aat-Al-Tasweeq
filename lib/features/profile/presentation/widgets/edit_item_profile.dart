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
                      "الاسم الأول",
                      style: AppStyles.style12W400Edite,
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 9.h),
                    TextFormField(
                      initialValue: 'فيصل',
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.whiteColor.withOpacity(0.10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: const BorderSide(width: 0),
                        ),
                      ),
                      style: AppStyles.style18W400,
                      textAlign: TextAlign.start,
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
                      "الاسم الثاني",
                      style: AppStyles.style12W400Edite,
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 9.h),
                    TextFormField(
                      initialValue: 'عبدالعزيز',
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.whiteColor.withOpacity(0.10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                      style: AppStyles.style18W400,
                      textAlign: TextAlign.start,
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
                      "الاسم الثالث",
                      style: AppStyles.style12W400Edite,
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 9.h),
                    TextFormField(
                      initialValue: 'آل سعود',
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.whiteColor.withOpacity(0.10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                      style: AppStyles.style18W400,
                      textAlign: TextAlign.start,
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
                  "رقم الهاتف",
                  style: AppStyles.style12W400Edite,
                  textAlign: TextAlign.start,
                ),
              ),
              TextFormField(
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
                  filled: true,
                  fillColor: AppColors.whiteColor.withOpacity(0.10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                ),
                style: AppStyles.style18W400,
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
                "الإيميل",
                style: AppStyles.style12W400Edite,
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 9.h),
              TextFormField(
                initialValue: 'faisal_abdelaziz@yahoo.com',
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.whiteColor.withOpacity(0.10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                ),
                style: AppStyles.style18W400,
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
