import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:shopping_chart/features/whatsapp/presentation/widgets/custom_progress_bar_text.dart';
import 'package:shopping_chart/features/whatsapp/presentation/widgets/custom_show_dialog.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class FacebookDeleteGroupsSendingView extends StatelessWidget {
  const FacebookDeleteGroupsSendingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: AspectRatio(
                aspectRatio: 1.5,
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
                      "جاري الحذف",
                      style: AppStyles.style46W900,
                    ),
                    SizedBox(height: 60.h),
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
                                "6 دقائق",
                                style: AppStyles.style14W800.copyWith(
                                  color: AppColors.blackColor,
                                  fontSize: 23.sp,
                                ),
                              ),
                              Text(
                                "المتبقى",
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
                                const CustomProgressBarAndText(
                                  label: "حذف المجموعات :",
                                  value: "3000",
                                  progress: 0.4,
                                ),
                                SizedBox(height: 11.h),
                                const CustomProgressBarAndText(
                                  label: "حذف عدد الكل :",
                                  value: "4000",
                                  progress: 0.75,
                                  textcolor: Color(0xffE21D1D),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.15),
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
                              textButton: "التالى",
                              content: Text(
                                "تم الحذف بنجاح",
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
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xff00C0CC),
                              Color(0xff006066),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "إلغاء",
                            style: AppStyles.style14W400,
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
    );
  }
}
