import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:country_code_picker/country_code_picker.dart';
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
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
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
                        color: isDark
                            ? AppColors.whiteColor.withOpacity(0.10)
                            : AppColors.fillLight,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: TextFormField(
                        initialValue: 'فيصل',
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          enabledBorder: isDark
                              ? null
                              : OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.r),
                                  ),
                                  borderSide: const BorderSide(
                                    color: AppColors.blueLight,
                                  ),
                                ),
                          contentPadding: const EdgeInsets.symmetric(
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
                        color: isDark
                            ? AppColors.whiteColor.withOpacity(0.10)
                            : AppColors.fillLight,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: TextFormField(
                        initialValue: 'عبدالعزيز',
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          enabledBorder: isDark
                              ? null
                              : OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.r),
                                  ),
                                  borderSide: const BorderSide(
                                    color: AppColors.blueLight,
                                  ),
                                ),
                          contentPadding: const EdgeInsets.symmetric(
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
                        color: isDark
                            ? AppColors.whiteColor.withOpacity(0.10)
                            : AppColors.fillLight,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: TextFormField(
                        initialValue: 'ال سعود',
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          enabledBorder: isDark
                              ? null
                              : OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.r),
                                  ),
                                  borderSide: const BorderSide(
                                    color: AppColors.blueLight,
                                  ),
                                ),
                          contentPadding: const EdgeInsets.symmetric(
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
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        color: isDark
                            ? AppColors.whiteColor.withOpacity(0.10)
                            : AppColors.fillLight,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: TextFormField(
                        initialValue: '0501234567',
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          enabledBorder: isDark
                              ? null
                              : OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.r),
                                  borderSide: const BorderSide(
                                    color: AppColors.blueLight,
                                  ),
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
                  ),
                  SizedBox(width: 3.w),
                  Expanded(
                    child: Container(
                      height: 62.h,
                      decoration: BoxDecoration(
                        color: isDark
                            ? AppColors.whiteColor.withOpacity(0.10)
                            : null,
                        gradient: isDark
                            ? null
                            : const LinearGradient(
                                colors: [
                                  AppColors.yellowLight,
                                  Color(0xff937B31),
                                ],
                              ),
                        borderRadius: BorderRadius.circular(10.r),
                        border: isDark
                            ? null
                            : Border.all(
                                color: AppColors.blueLight,
                              ),
                      ),
                      child:
                          //  Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     Text(
                          //       "966+",
                          //       style: AppStyles.style18W400,
                          //     ),
                          //     const Icon(
                          //       Icons.arrow_drop_down,
                          //       size: 34,
                          //     ),
                          //   ],
                          // ),
                          Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: CountryCodePicker(
                              initialSelection: "SA",
                              favorite: const ['+966', 'SA'],
                              showFlagDialog: true,
                              showFlag: false,
                              textOverflow: TextOverflow.ellipsis,
                              dialogTextStyle: const TextStyle(
                                color: Colors.white,
                              ),
                              boxDecoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            size: 30,
                            color: isDark ? Colors.white : Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 30.h),
          const CustomEditProfileItemIncludeCountry(),
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
                  color: isDark
                      ? AppColors.whiteColor.withOpacity(0.10)
                      : AppColors.fillLight,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: TextFormField(
                  initialValue: 'faisal_abdelaziz@yahoo.com',
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: isDark
                        ? null
                        : OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.r),
                            ),
                            borderSide: const BorderSide(
                              color: AppColors.blueLight,
                            ),
                          ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 12),
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
