import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class FacebookChooseGroupsViewBody1 extends StatefulWidget {
  const FacebookChooseGroupsViewBody1({super.key});

  @override
  State<FacebookChooseGroupsViewBody1> createState() =>
      _FacebookChooseGroupsViewBody1State();
}

class _FacebookChooseGroupsViewBody1State
    extends State<FacebookChooseGroupsViewBody1> {
  bool selectAll = false;
  List<bool> isSelected = List.generate(15, (index) => false);
  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;

    return Column(
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
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        Assets.imagesSendforward,
                      ),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: Text(
                          "chooseoneofthegroupsanditissenttoallnumbers"
                              .tr(context: context),
                          style: AppStyles.style14W400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 11.w),
              Expanded(
                child: InkWell(
                  onTap: () {
                    context.push("/diamondWallet");
                  },
                  child: Container(
                    padding: const EdgeInsets.all(24),
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
                    child: Text(
                      "recharge".tr(context: context),
                      style: AppStyles.style14W400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 40.h),
        Text(
          "groups".tr(context: context),
          style: AppStyles.style21W900.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 20.h),
        Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 20.w),
          child: CheckboxListTile(
            title: Text(
              "SelectAll".tr(context: context),
              style: AppStyles.style13W600,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2.r),
            ),
            activeColor: const Color(0xff00C0CC),
            checkColor: const Color(0xff00C0CC),
            visualDensity: VisualDensity.compact,
            contentPadding: EdgeInsets.zero,
            side: BorderSide(
              color: isDark ? Colors.white : AppColors.blueLight,
            ),
            value: selectAll,
            onChanged: (value) {
              setState(() {
                selectAll = value!;
                isSelected =
                    List.generate(isSelected.length, (index) => selectAll);
              });
            },
          ),
        ),
        SizedBox(height: 20.h),
        Expanded(
          child: Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 20.w),
            child: ListView.builder(
              itemCount: isSelected.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CheckboxListTile(
                      title: Text(
                        "جروب العائلة",
                        style: AppStyles.style13W600,
                      ),
                      contentPadding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2.r),
                      ),
                      activeColor: const Color(0xff00C0CC),
                      checkColor: const Color(0xff00C0CC),
                      visualDensity: VisualDensity.compact,
                      side: BorderSide(
                        color: isDark ? Colors.white : AppColors.blueLight,
                      ),
                      value: isSelected[index],
                      onChanged: (value) {
                        setState(() {
                          isSelected[index] = value!;
                          if (!value) selectAll = false;
                          if (isSelected.every((element) => element)) {
                            selectAll = true;
                          }
                        });
                      },
                    ),
                    Divider(
                      color: Colors.white,
                      thickness: 1,
                      endIndent: 25.w,
                      indent: 25.w,
                    ),
                  ],
                );
              },
            ),
          ),
        ),
        SizedBox(height: 10.h),
        InkWell(
          onTap: () {
            context.push('/facebookChooseGroupsView2');
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
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: Center(
              child: Text(
                "next".tr(context: context),
                style: AppStyles.style14W400,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        SizedBox(height: 17.h),
        RichText(
          text: TextSpan(
            text: "GroupName".tr(context: context),
            style: AppStyles.style13W600,
            children: [
              TextSpan(
                text: ' حراج وشراء ',
                style: AppStyles.style13W600.copyWith(
                  color: const Color(0xff00C0CC),
                ),
              ),
              const TextSpan(
                text: "   ",
              ),
              TextSpan(
                text: "Numberofaccounts:".tr(context: context),
                style: AppStyles.style13W600,
              ),
              TextSpan(
                text: " (1200) ",
                style: AppStyles.style13W600.copyWith(
                  color: const Color(0xff00C0CC),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 9.h),
        Text(
          "* The number allowed to be sent is 400 people only. Please charge more diamonds."
              .tr(context: context),
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
    );
  }
}
