import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import 'custom_show_dialog.dart';

class LaunchAdChooseGroupToSendViewBody2 extends StatefulWidget {
  const LaunchAdChooseGroupToSendViewBody2({super.key});

  @override
  State<LaunchAdChooseGroupToSendViewBody2> createState() =>
      _LaunchAdChooseGroupToSendViewBody2State();
}

class _LaunchAdChooseGroupToSendViewBody2State
    extends State<LaunchAdChooseGroupToSendViewBody2> {
  bool selectAll = false;
  List<bool> isSelected = List.generate(15, (index) => false);
  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          SizedBox(height: 20.h),
          Container(
            padding: EdgeInsets.only(
              top: 15.h,
              bottom: 11.h,
              left: 22.h,
              right: 22.w,
            ),
            decoration: BoxDecoration(
              color: isDark ? const Color(0xff00C0CC) : AppColors.yellowLight,
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
                  style: AppStyles.style14W400.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18.h),
          Align(
            alignment: Alignment.topRight,
            child: Text(
              "* The number allowed to be sent is 400 people only. Please charge more diamonds."
                  .tr(context: context),
              style: AppStyles.style13W600.copyWith(
                fontSize: 9.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 30.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  text: "GroupName".tr(context: context),
                  style: AppStyles.style13W600.copyWith(
                    color: isDark ? Colors.white : AppColors.blackColor,
                  ),
                  children: [
                    TextSpan(
                      text: ' (حراج) ',
                      style: AppStyles.style13W600.copyWith(
                        color: const Color(0xffE21D1D),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  context.push("/diamondWallet");
                },
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
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
                              Color(0xffF9D053),
                              Color(0xff796727),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                  ),
                  child: Center(
                    child: Text(
                      "recharge".tr(context: context),
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
          SizedBox(height: 25.h),
          CheckboxListTile(
            title: Text(
              "SelectAll".tr(context: context),
              style: AppStyles.style13W600,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2.r),
            ),
            activeColor:
                isDark ? const Color(0xff00C0CC) : AppColors.yellowLight,
            checkColor:
                isDark ? const Color(0xff00C0CC) : AppColors.yellowLight,
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
          SizedBox(height: 20.h),
          Expanded(
            child: ListView.builder(
              itemCount: isSelected.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CheckboxListTile(
                      title: Text(
                        'فيصل عبدالعزيز',
                        style: AppStyles.style13W600,
                      ),
                      contentPadding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2.r),
                      ),
                      activeColor: isDark
                          ? const Color(0xff00C0CC)
                          : AppColors.yellowLight,
                      checkColor: isDark
                          ? const Color(0xff00C0CC)
                          : AppColors.yellowLight,
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
                      color: isDark ? Colors.white : AppColors.hightYellowLight,
                      thickness: 1,
                      endIndent: 25.w,
                      indent: 25.w,
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(height: 10.h),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                barrierColor: const Color(0xffFFF9F9).withOpacity(0.33),
                builder: (context) {
                  return CustomShowRechargeDialog(
                    onTap: () {
                      context.push('/sendingChoosenGroupView');
                    },
                  );
                },
              );
            },
            child: Container(
              height: 40.h,
              width: 200.w,
              padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 4.h),
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
                          Color(0xffF9D053),
                          Color(0xff796727),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
              ),
              child: Center(
                child: Text(
                  "send".tr(context: context),
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
    );
  }
}
