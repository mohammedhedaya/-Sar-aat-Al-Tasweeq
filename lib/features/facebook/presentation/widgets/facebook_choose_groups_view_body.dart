import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/core/utils/assets.dart';
import 'package:shopping_chart/features/whatsapp/presentation/widgets/destination_check_box.dart';

class FacebookChooseGroupsViewBody extends StatelessWidget {
  const FacebookChooseGroupsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(start: 19.w, end: 8.w),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.all(11),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(
                        color: AppColors.whiteColor,
                        width: 1,
                      ),
                    ),
                    child: Expanded(
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            Assets.imagesSendforward,
                          ),
                          SizedBox(width: 10.w),
                          Expanded(
                            child: Text(
                              "أختار أحد المجموعات ويتم الإرسال على جميع الحسابات ",
                              style: AppStyles.style14W400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 11.w),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xff00C0CC),
                          Color(0xff006066),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Text(
                      "إعادة الشحن",
                      style: AppStyles.style14W400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 47.h),
          Text(
            "المجموعات",
            style: AppStyles.style21W900.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 34.h),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 47.w, end: 22.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "حراج",
                  style: AppStyles.style13W600,
                ),
                const ChooseDestinationCheckbox(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 47.w, end: 22.w),
            child: const Divider(
              color: AppColors.whiteColor,
              thickness: 1,
              endIndent: 25,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 47.w, end: 22.w),
            child: Column(
              children: List.generate(
                5,
                (index) => Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "جروب العائلة",
                          style: AppStyles.style13W600,
                        ),
                        const ChooseDestinationCheckbox()
                      ],
                    ),
                    Divider(
                      color: AppColors.whiteColor,
                      thickness: 1,
                      endIndent: 25.w,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 59.h),
          InkWell(
            onTap: () {
              // context.push('/launchAdChooseGroupToSendView2');
            },
            child: Container(
              height: 40.h,
              width: 200.w,
              padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 4.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xff00C0CC),
                    Color(0xff006066),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Center(
                child: Text(
                  "التالى",
                  style: AppStyles.style14W400,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          SizedBox(height: 17.h),
          RichText(
            text: TextSpan(
              text: "اسم المجموعة  ",
              style: AppStyles.style13W600,
              children: [
                TextSpan(
                  text: 'حراج وشراء',
                  style: AppStyles.style13W600.copyWith(
                    color: const Color(0xff00C0CC),
                  ),
                ),
                const TextSpan(
                  text: "    ",
                ),
                TextSpan(
                  text: "عدد الحسابات ",
                  style: AppStyles.style13W600,
                ),
                TextSpan(
                  text: "(1200)",
                  style: AppStyles.style13W600.copyWith(
                    color: const Color(0xff00C0CC),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.h),
          Text(
            "* عدد المسموح الإرسال علية 400 شخص فقط برجاء شحن المزيد من الماسات",
            style: AppStyles.style13W600.copyWith(
              fontSize: 9.sp,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 22.h),
          Container(
            padding: EdgeInsets.only(
              top: 15.h,
              bottom: 11.h,
              left: 22.h,
              right: 22.w,
            ),
            decoration: BoxDecoration(
              color: const Color(0xff00C0CC),
              borderRadius: BorderRadius.circular(15.r),
              border: Border.all(
                color: Colors.white,
                width: 1,
              ),
            ),
            child: Column(
              children: [
                SvgPicture.asset(
                  Assets.imagesLaunchJewel,
                ),
                SizedBox(height: 11.h),
                Text(
                  '400',
                  style: AppStyles.style14W400,
                ),
              ],
            ),
          ),
          SizedBox(height: 22.h),
        ],
      ),
    );
  }
}
