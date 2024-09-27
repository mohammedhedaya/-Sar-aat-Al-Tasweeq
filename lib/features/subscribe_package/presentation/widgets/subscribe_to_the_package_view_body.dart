import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class SubscribeToThePackageViewBody extends StatelessWidget {
  const SubscribeToThePackageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          height: constraints.maxHeight,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                Assets.imagesHomeBackground,
              ),
              alignment: Alignment(0.0, -2.0),
              opacity: 0.10,
            ),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.r),
                          topRight: Radius.circular(25.r),
                        ),
                        color: const Color(0xffABABAB),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 30.h),
                            Text(
                              "faisal_abdelaziz".tr(context: context),
                              style: AppStyles.style20W400,
                            ),
                            SizedBox(height: 5.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  Assets.imagesSubscribeOfPackage,
                                  colorFilter: const ColorFilter.mode(
                                    Color(0xff323232),
                                    BlendMode.srcIn,
                                  ),
                                ),
                                SizedBox(width: 8.w),
                                Text(
                                  "subcribetothepackage".tr(context: context),
                                  style: AppStyles.style14W400.copyWith(
                                    color: const Color(0xff323232),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 30.h),
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(24),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.r),
                                gradient: LinearGradient(
                                  colors: [
                                    const Color(0xff7B7B7B),
                                    const Color(0xff0f0f0f).withOpacity(0.65),
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "packege_features".tr(context: context),
                                        style: AppStyles.style14W600,
                                      ),
                                      Text(
                                        "30_saudi_riyal".tr(context: context),
                                        style: AppStyles.style14W600,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20.h),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "• ${"15_diamond_free".tr(context: context)}",
                                          style: AppStyles.style14W400.copyWith(
                                            color: AppColors.whiteColor,
                                          ),
                                        ),
                                        Text(
                                          "• ${"whatsapp_logo_free".tr(context: context)}",
                                          style: AppStyles.style14W400.copyWith(
                                            color: AppColors.whiteColor,
                                          ),
                                        ),
                                        Text(
                                          "• ${"telegram_logo_free".tr(context: context)}",
                                          style: AppStyles.style14W400.copyWith(
                                            color: AppColors.whiteColor,
                                          ),
                                        ),
                                        Text(
                                          "• ${"instagram_logo_free".tr(context: context)}",
                                          style: AppStyles.style14W400.copyWith(
                                            color: AppColors.whiteColor,
                                          ),
                                        ),
                                        Text(
                                          "• ${"x_logo_free".tr(context: context)}",
                                          style: AppStyles.style14W400.copyWith(
                                            color: AppColors.whiteColor,
                                          ),
                                        ),
                                        Text(
                                          "• ${"facebook_logo_free".tr(context: context)}",
                                          style: AppStyles.style14W400.copyWith(
                                            color: AppColors.whiteColor,
                                          ),
                                        ),
                                        Text(
                                          "• ${"ticktok_logo_free".tr(context: context)}",
                                          style: AppStyles.style14W400.copyWith(
                                            color: AppColors.whiteColor,
                                          ),
                                        ),
                                        Text(
                                          "• ${"sms_logo_free".tr(context: context)}",
                                          style: AppStyles.style14W400.copyWith(
                                            color: AppColors.whiteColor,
                                          ),
                                        ),
                                        Text(
                                          "• ${"email_logo_free".tr(context: context)}",
                                          style: AppStyles.style14W400.copyWith(
                                            color: AppColors.whiteColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 25.h),
                                  InkWell(
                                    onTap: () {
                                      context.push("/paymentGatewayView");
                                    },
                                    child: Center(
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20.w, vertical: 10.h),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.r),
                                          gradient: const LinearGradient(
                                            colors: [
                                              Color(0xff00C0CC),
                                              Color(0xff006066),
                                            ],
                                            begin: Alignment.centerLeft,
                                            end: Alignment.centerRight,
                                          ),
                                        ),
                                        child: Text(
                                          "subscribe".tr(context: context),
                                          style: AppStyles.style14W400.copyWith(
                                            color: AppColors.whiteColor,
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
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.13,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffABABAB),
                  ),
                  child: const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                      Assets.imagesImagePersonInAppBar,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
