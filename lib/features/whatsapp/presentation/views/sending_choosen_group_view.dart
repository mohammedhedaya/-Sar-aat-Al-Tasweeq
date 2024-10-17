import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../widgets/custom_progress_bar_text.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import '../widgets/custom_show_dialog.dart';

class SendingChoosenGroupView extends StatelessWidget {
  const SendingChoosenGroupView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: isDark ? AppColors.darkGray : Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(
              Icons.arrow_forward_ios_sharp,
            ),
          ),
        ],
      ),
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
                color: const Color(0xffABABAB),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.r),
                  topRight: Radius.circular(25.r),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    "sending".tr(context: context),
                    style: AppStyles.style46W900,
                  ),
                  SizedBox(height: 38.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "GroupName".tr(context: context),
                        style: AppStyles.style19W900,
                      ),
                      Text(
                        "حراج",
                        style: AppStyles.style16W900.copyWith(
                          fontSize: 17.sp,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: AppColors.blackColor,
                    height: 35.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircularPercentIndicator(
                        radius: 55.0,
                        lineWidth: 6.0.w,
                        percent: 0.70,
                        backgroundColor: AppColors.blackColor,
                        progressColor: AppColors.whiteColor,
                        reverse: true,
                        center: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "6days".tr(context: context),
                              style: AppStyles.style14W800.copyWith(
                                color: AppColors.blackColor,
                                fontSize: 23.sp,
                              ),
                            ),
                            Text(
                              "remaining".tr(context: context),
                              style: AppStyles.style19W900,
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
                            color: const Color(0xff727272),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Column(
                            children: [
                              CustomProgressBarAndText(
                                label: "NumbersOfContacts".tr(context: context),
                                value: "1200",
                                progress: 1.0,
                              ),
                              SizedBox(height: 11.h),
                              CustomProgressBarAndText(
                                label: "Allowednumberoftransmissions:"
                                    .tr(context: context),
                                value: "1000",
                                progress: 1.0,
                              ),
                              SizedBox(height: 11.h),
                              CustomProgressBarAndText(
                                label:
                                    "Sendingtothenumbers:".tr(context: context),
                                value: "300",
                                progress: 0.7,
                                textcolor: const Color(0xffE21D1D),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.13),
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        barrierColor: const Color(0xffFFF9F9).withOpacity(0.33),
                        builder: (context) {
                          return CustomShowDialog(
                            onTap: () {
                              context.pop();
                            },
                            image: Assets.imagesSuccessgreenicon,
                            textButton: "next".tr(context: context),
                            content: Text(
                              "SentSuccessfully".tr(context: context),
                              style: AppStyles.style15W900,
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
                        color: isDark ? null : AppColors.blueLight,
                        gradient: isDark
                            ? const LinearGradient(
                                colors: [
                                  Color(0xff00C0CC),
                                  Color(0xff006066),
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              )
                            : null,
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
