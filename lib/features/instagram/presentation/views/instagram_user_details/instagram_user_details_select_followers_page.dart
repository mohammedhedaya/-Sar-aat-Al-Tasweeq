import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_style.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../whatsapp/presentation/widgets/custom_show_dialog.dart';

class InstagramUserDetailsSelectFollowersPage extends StatefulWidget {
  const InstagramUserDetailsSelectFollowersPage({super.key});

  @override
  State<InstagramUserDetailsSelectFollowersPage> createState() =>
      _InstagramUserDetailsSelectFollowersPageState();
}

class _InstagramUserDetailsSelectFollowersPageState
    extends State<InstagramUserDetailsSelectFollowersPage> {
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
            'تحديد الكل',
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
            showDialog(
              context: context,
              barrierColor: const Color(0xffFFF9F9).withOpacity(0.33),
              builder: (context) {
                return CustomShowDialog(
                  onTap: () {
                    context.push('/instagramSendingView');
                  },
                  image: Assets.imagesRechargeWallet,
                  textButton: "إعادة الشحن",
                  content: Text(
                    "العدد المسموح الأرسال عليه 400 شخص فقط الرجاء شحن المزيد من الماسات",
                    style: AppStyles.style15W900,
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
                "إرسال",
                style: AppStyles.style14W400,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
