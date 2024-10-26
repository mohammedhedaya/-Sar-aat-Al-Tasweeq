import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:shopping_chart/core/constants/constants.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import '../../../whatsapp/presentation/widgets/custom_progress_bar_text.dart';
import '../../../whatsapp/presentation/widgets/custom_show_dialog.dart';

class FacebookGroupsSendingView extends StatelessWidget {
  const FacebookGroupsSendingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: isDark(context)
              ? null
              : const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                Assets.imagesFrameBGLight,
              ),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
            ),
          ),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: AspectRatio(
                  aspectRatio: 1.4,
                  child: Image.asset(
                    Assets.imagesApplogo,
                  ),
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: isDark(context)
                        ? const Color(0xffABABAB)
                        : AppColors.blueLight,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.r),
                      topRight: Radius.circular(25.r),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "sending".tr(context: context),
                        style: AppStyles.style46W900.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 60.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircularPercentIndicator(
                            radius: 55.0,
                            lineWidth: 6.0.w,
                            percent: 0.70,
                            backgroundColor: isDark(context)
                                ? AppColors.blackColor
                                : AppColors.whiteColor,
                            progressColor: isDark(context)
                                ? AppColors.whiteColor
                                : AppColors.yellowLight,
                            reverse: true,
                            center: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "6days".tr(context: context),
                                  style: AppStyles.style14W800.copyWith(
                                    color: isDark(context)
                                        ? AppColors.blackColor
                                        : AppColors.yellowLight,
                                    fontSize: 23.sp,
                                  ),
                                ),
                                Text(
                                  "remaining".tr(context: context),
                                  style: AppStyles.style19W900.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: const EdgeInsets.all(25),
                              decoration: BoxDecoration(
                                color: isDark(context)
                                    ? const Color(0xff727272)
                                    : AppColors.yellowLight,
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Column(
                                children: [
                                  CustomProgressBarAndText(
                                    label:
                                        "NumbersOfGroups".tr(context: context),
                                    value: "2500",
                                    progress: 0.8,
                                  ),
                                  SizedBox(height: 23.h),
                                  CustomProgressBarAndText(
                                    label: "Numberofclosedgroups:"
                                        .tr(context: context),
                                    value: "500",
                                    progress: 1.0,
                                  ),
                                  SizedBox(height: 23.h),
                                  CustomProgressBarAndText(
                                    label: "Allowednumberoftransmissions:"
                                        .tr(context: context),
                                    value: "2500",
                                    progress: 0.8,
                                    textcolor: const Color(0xffE21D1D),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1),
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            barrierColor:
                                const Color(0xffFFF9F9).withOpacity(0.33),
                            builder: (context) {
                              return CustomShowDialog(
                                onTap: () {
                                  context.pop();
                                  context.pop();
                                  context.pop();
                                },
                                image: Assets.imagesSuccessgreenicon,
                                textButton: "next".tr(context: context),
                                content: Text(
                                  "SentSuccessfully".tr(context: context),
                                  style: AppStyles.style15W900.copyWith(
                                    color: AppColors.whiteColor,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          height: 40.h,
                          width: 198.w,
                          padding: EdgeInsets.symmetric(
                            horizontal: 22.w,
                            vertical: 4.h,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            gradient: isDark(context)
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
                              "cancel".tr(context: context),
                              style: AppStyles.style14W400.copyWith(
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
