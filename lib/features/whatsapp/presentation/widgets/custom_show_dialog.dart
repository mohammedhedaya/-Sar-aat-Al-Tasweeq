import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/app_text_style.dart';

class CustomShowDialog extends StatelessWidget {
  const CustomShowDialog({
    super.key,
    this.content,
    required this.image,
    required this.textButton,
    this.onTap,
  });

  final String image;
  final String textButton;
  final Widget? content;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.r),
      ),
      title: SvgPicture.asset(
        image,
      ),
      content: content,
      actions: [
        InkWell(
          onTap: onTap,
          child: Center(
            child: Container(
              height: 31.h,
              width: 119.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                color: isDark ? null : Colors.orange,
                gradient: isDark
                    ? const LinearGradient(
                        colors: [
                          Color(0xff00C0CC),
                          Color(0xff006066),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        // begin: Alignment.centerLeft,
                        // end: Alignment.centerRight,
                      )
                    : null,
              ),
              child: Center(
                child: Text(
                  textButton,
                  style: AppStyles.style14W700.copyWith(
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
