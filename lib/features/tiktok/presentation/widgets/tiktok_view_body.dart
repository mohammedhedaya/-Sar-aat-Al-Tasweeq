import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import '../../../auth/presentation/widgets/auth_text_field.dart';
import '../../../whatsapp/presentation/widgets/custom_show_dialog.dart';

class TiktokViewBody extends StatelessWidget {
  const TiktokViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 50.h,
                child: Text(
                  "TikTok",
                  style: AppStyles.style78W400,
                  textAlign: TextAlign.center,
                ),
              ),
              Center(
                child: SvgPicture.asset(
                  Assets.imagesTiktoksvg,
                  height: 100.h,
                ),
              ),
            ],
          ),
          SizedBox(height: 80.h),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(
              left: 41.w,
              right: 31.w,
              top: 80.h,
              bottom: 25.h,
            ),
            decoration: BoxDecoration(
              color: isDark
                  ? const Color(0xff080d12).withOpacity(0.80)
                  : AppColors.blueLight.withOpacity(0.90),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(70.r),
                topRight: Radius.circular(70.r),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAuthTextField(
                  onChanged: (value) {},
                  hintStyle: AppStyles.style14W400.copyWith(
                    color:
                        isDark ? const Color(0xffBABABA) : AppColors.blackColor,
                  ),
                  hintText: "username".tr(context: context),
                  textAlign: TextAlign.center,
                  fiiledColor: isDark
                      ? Colors.white.withOpacity(0.10)
                      : AppColors.whiteColor,
                ),
                SizedBox(height: 35.h),
                CustomAuthTextField(
                  onChanged: (value) {},
                  hintStyle: AppStyles.style14W400.copyWith(
                    color:
                        isDark ? const Color(0xffBABABA) : AppColors.blackColor,
                  ),
                  hintText: "password".tr(context: context),
                  textAlign: TextAlign.center,
                  fiiledColor: isDark
                      ? Colors.white.withOpacity(0.10)
                      : AppColors.whiteColor,
                ),
                SizedBox(height: 36.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        barrierColor: const Color(0xffFFF9F9).withOpacity(0.33),
                        builder: (context) {
                          return CustomShowDialog(
                            onTap: () {
                              context.push("/launchYourTiktokAdView");
                            },
                            image: Assets.imagesXerror,
                            textButton: "subscribe".tr(context: context),
                            content: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "pleaseSubscribeToThePackage"
                                      .tr(context: context),
                                  style: AppStyles.style15W900.copyWith(
                                    color: isDark
                                        ? Colors.white
                                        : AppColors.blueLight,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(width: 10.w),
                                SvgPicture.asset(
                                  Assets.imagesSubscribeOfPackage,
                                  colorFilter: ColorFilter.mode(
                                    isDark ? Colors.white : AppColors.blueLight,
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isDark
                          ? AppColors.blackColor
                          : const Color(0xffB99C3D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                      minimumSize: Size(double.infinity, 45.h),
                    ),
                    child: Text(
                      "log in".tr(context: context),
                      style: AppStyles.style14W600.copyWith(
                        color: isDark
                            ? AppColors.whiteColor
                            : AppColors.whiteColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(height: 39.h),
                Text(
                  "See how to use Tiktok?".tr(context: context),
                  style: AppStyles.style14W600,
                ),
                SizedBox(height: 10.h),
                Image.asset(
                  Assets.imagesImageSea,
                ),
                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "hearyouclearly".tr(context: context),
                      style: AppStyles.style14W600,
                    ),
                    SizedBox(width: 5.w),
                    SvgPicture.asset(
                      Assets.imagesLikeicon,
                      height: 40.h,
                      colorFilter: ColorFilter.mode(
                        isDark
                            ? const Color(0xff00C0CC)
                            : AppColors.yellowLight,
                        BlendMode.srcIn,
                      ),
                    ),
                  ],
                ),
                Text(
                  "WeHelpYou".tr(context: context),
                  style: AppStyles.style12W600.copyWith(
                    color: const Color(0xffffffff),
                  ),
                ),
                SizedBox(height: 16.h),
                InkWell(
                  onTap: () {
                    context.push('/whatsappAddSuggestionView');
                  },
                  child: Center(
                    child: Container(
                      height: 31.h,
                      width: 119.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        gradient: isDark
                            ? const LinearGradient(
                                colors: [
                                  Color(0xff00C0CC),
                                  Color(0xff006066),
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              )
                            : const LinearGradient(
                                colors: [
                                  AppColors.linearLight1,
                                  AppColors.linearLight2,
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                      ),
                      child: Center(
                        child: Text(
                          "suggestions".tr(context: context),
                          style: AppStyles.style14W700.copyWith(
                            color: const Color(0xffffffff),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
