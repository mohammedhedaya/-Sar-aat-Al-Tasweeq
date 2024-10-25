import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class FacebookGroupsChooseDestinationViewBody extends StatefulWidget {
  const FacebookGroupsChooseDestinationViewBody({super.key});

  @override
  State<FacebookGroupsChooseDestinationViewBody> createState() =>
      _FacebookGroupsChooseDestinationViewBodyState();
}

class _FacebookGroupsChooseDestinationViewBodyState
    extends State<FacebookGroupsChooseDestinationViewBody> {
  bool selectAll = false;
  List<bool> isSelected = List.generate(15, (index) => false);
  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 25.h),
            child: Column(
              children: [
                Center(
                  child: Text(
                    "Chooseadestination(Facebook)".tr(context: context),
                    style: AppStyles.style17W800,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 40.h),
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color:
                          isDark ? AppColors.whiteColor : AppColors.blueLight,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.whiteColor.withOpacity(0.25),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Text(
                          "NumberofFacebookgroups".tr(context: context),
                          style: AppStyles.style17W800.copyWith(
                            color:
                                isDark ? const Color(0xff2F2F2F) : Colors.white,
                          ),
                        ),
                        Text(
                          "4000",
                          style: AppStyles.style17W800.copyWith(
                            color:
                                isDark ? const Color(0xff2F2F2F) : Colors.white,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                  ),
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
                      isSelected = List.generate(
                          isSelected.length, (index) => selectAll);
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
                              color:
                                  isDark ? Colors.white : AppColors.blueLight,
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
                            color: isDark
                                ? Colors.white
                                : AppColors.hightYellowLight,
                            thickness: 1,
                            endIndent: 25.w,
                            indent: 25.w,
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 20.h),
          child: InkWell(
            onTap: () {
              context.push('/facebookGroupsSendingView');
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
                          AppColors.linearLight1,
                          AppColors.linearLight2,
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
        ),
      ],
    );
  }
}
