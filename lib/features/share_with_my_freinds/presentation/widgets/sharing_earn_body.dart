import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:share_plus/share_plus.dart'; // Import share_plus package
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class SharingEarnBody extends StatelessWidget {
  const SharingEarnBody({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          isDark
              ? Positioned(
                  top: -MediaQuery.of(context).size.height * 0.1,
                  child: SvgPicture.asset(
                    Assets.imagesBgSharingScreen,
                    colorFilter: const ColorFilter.mode(
                      AppColors.loginBtn,
                      BlendMode.srcIn,
                    ),
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                )
              : Positioned(
                  top: -MediaQuery.of(context).size.height * 0.0,
                  child: SvgPicture.asset(
                    Assets.imagesShareEarnCup,
                    colorFilter: const ColorFilter.mode(
                      AppColors.blueLight,
                      BlendMode.srcIn,
                    ),
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
          Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.28),
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.r),
                      topRight: Radius.circular(25.r),
                    ),
                    color:
                        isDark ? const Color(0xffABABAB) : AppColors.blueLight,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 50.h),
                      Text(
                        "referralCode".tr(context: context),
                        style: AppStyles.style20W400ShareWithFiends.copyWith(
                          color: isDark
                              ? const Color(0xff5B5B5B)
                              : AppColors.whiteColor,
                        ),
                      ),
                      SizedBox(height: 12.h),
                      TextFormField(
                        initialValue: '152510238jcsuxb',
                        style: const TextStyle(color: Colors.black),
                        readOnly: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.mixWhiteAndGray,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.r),
                            borderSide: BorderSide.none,
                          ),
                          suffixIcon: InkWell(
                            onTap: () {
                              // Share functionality
                              Share.share('152510238jcsuxb');
                            },
                            child: Transform.scale(
                              scale: 0.5,
                              child: SvgPicture.asset(
                                Assets.imagesCopyicon,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        "shareTheAppToEarn".tr(context: context),
                        style: AppStyles.style20W400ShareWithFiends.copyWith(
                          color: isDark
                              ? const Color(0xff5B5B5B)
                              : AppColors.whiteColor,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 50.h),
                      Image.asset(
                        Assets.imagesImageSea,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
