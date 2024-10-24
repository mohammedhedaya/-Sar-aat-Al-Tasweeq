import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import '../widgets/custom_progress_bar_text.dart';
import '../widgets/custom_show_dialog.dart';

class DeleteSendingView extends StatelessWidget {
  const DeleteSendingView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: AspectRatio(
              aspectRatio: 1.6,
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
                color: isDark ? const Color(0xffABABAB) : AppColors.blueLight,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.r),
                  topRight: Radius.circular(25.r),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    "deleting".tr(context: context),
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
                        backgroundColor: isDark
                            ? AppColors.blackColor
                            : AppColors.whiteColor,
                        progressColor: isDark
                            ? AppColors.whiteColor
                            : AppColors.yellowLight,
                        reverse: true,
                        center: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "6days".tr(context: context),
                              style: AppStyles.style14W800.copyWith(
                                color: isDark
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
                            color: isDark
                                ? const Color(0xff727272)
                                : AppColors.yellowLight,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Column(
                            children: [
                              CustomProgressBarAndText(
                                label: "Delete chats:".tr(context: context),
                                value: "1000",
                                progress: 0.2,
                              ),
                              SizedBox(height: 11.h),
                              CustomProgressBarAndText(
                                label: "Delete groups:".tr(context: context),
                                value: "3000",
                                progress: 0.4,
                              ),
                              SizedBox(height: 11.h),
                              CustomProgressBarAndText(
                                label: "Delete the number of all:"
                                    .tr(context: context),
                                value: "4000",
                                progress: 0.8,
                                textcolor: const Color(0xffE21D1D),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        barrierColor: const Color(0xffFFF9F9).withOpacity(0.33),
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
                              "Deletedsuccessfully".tr(context: context),
                              style: AppStyles.style15W900.copyWith(
                                color: Colors.white,
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
                                  Color(0xFFF9D053),
                                  Color(0xFF937B31),
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
    );
  }
}
