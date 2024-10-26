import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_style.dart';
import '../../../../whatsapp/presentation/widgets/custom_show_dialog.dart';

class TiktokUserDetailsSelectFollowingsPage extends StatefulWidget {
  const TiktokUserDetailsSelectFollowingsPage({super.key});

  @override
  State<TiktokUserDetailsSelectFollowingsPage> createState() =>
      _TiktokUserDetailsSelectFollowingsPageState();
}

class _TiktokUserDetailsSelectFollowingsPageState
    extends State<TiktokUserDetailsSelectFollowingsPage> {
  bool selectAll = false;
  List<bool> isSelected = List.generate(15, (index) => false);
  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return Column(
      children: [
        SizedBox(height: 25.h),
        CheckboxListTile(
          title: Text(
            "SelectAll".tr(context: context),
            style: AppStyles.style13W600,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2.r),
          ),
          activeColor: isDark ? const Color(0xff00C0CC) : AppColors.yellowLight,
          checkColor: isDark ? const Color(0xff00C0CC) : AppColors.yellowLight,
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
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              barrierColor: const Color(0xffFFF9F9).withOpacity(0.33),
              builder: (context) {
                return CustomShowRechargeDialog(
                  onTap: () {
                    context.push('/tiktokSendingView');
                  },
                  content: Text(
                    "The number allowed to be sent is 400 people only. Please charge more diamonds."
                        .tr(context: context),
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
      ],
    );
  }
}
