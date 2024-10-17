import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_text_style.dart';

class TelegramSendToChatsPage extends StatefulWidget {
  const TelegramSendToChatsPage({super.key});

  @override
  State<TelegramSendToChatsPage> createState() =>
      _TelegramSendToChatsPageState();
}

class _TelegramSendToChatsPageState extends State<TelegramSendToChatsPage> {
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
        InkWell(
          onTap: () {
            context.push('/whastappSendingView');
          },
          child: Container(
            height: 40.h,
            width: 200.w,
            padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 4.h),
            decoration: BoxDecoration(
              color: isDark ? null : AppColors.blueLight,
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
                  : null,
            ),
            child: Center(
              child: Text(
                "send".tr(context: context),
                style: AppStyles.style14W400.copyWith(
                  color: isDark ? AppColors.whiteColor : Colors.white,
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
