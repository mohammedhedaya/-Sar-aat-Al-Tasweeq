import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import '../../../../core/utils/assets.dart';

class SwithTheme extends StatefulWidget {
  const SwithTheme({super.key});

  @override
  State<SwithTheme> createState() => _SwithThemeState();
}

class _SwithThemeState extends State<SwithTheme> {
  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return Align(
      alignment: AlignmentDirectional.topEnd,
      child: InkWell(
        onTap: () {
          // AdaptiveTheme.of(context).toggleThemeMode();
          if (isDark) {
            AdaptiveTheme.of(context).setLight();
          } else {
            AdaptiveTheme.of(context).setDark();
          }
        },
        child: Container(
          width: 0.2.sw,
          height: 0.1.sw,
          constraints: BoxConstraints(minHeight: 39.h, minWidth: 95.h),
          decoration: BoxDecoration(
            color: isDark ? const Color(0xffD9D9D9) : AppColors.blueLight,
            borderRadius: BorderRadius.circular(30.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  // AdaptiveTheme.of(context).setLight();
                  // AdaptiveTheme.of(context).toggleThemeMode();
                  if (isDark) {
                    AdaptiveTheme.of(context).setLight();
                  } else {
                    AdaptiveTheme.of(context).setDark();
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: isDark ? Colors.transparent : null,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: SvgPicture.asset(
                      Assets.imagesLight,
                      colorFilter: ColorFilter.mode(
                        isDark ? Colors.black : AppColors.yellowLight,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 12.w),
              GestureDetector(
                onTap: () {
                  if (isDark) {
                    AdaptiveTheme.of(context).setLight();
                  } else {
                    AdaptiveTheme.of(context).setDark();
                  }
                  // AdaptiveTheme.of(context).setDark();
                  // AdaptiveTheme.of(context).toggleThemeMode();
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: isDark ? Colors.black : Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: SvgPicture.asset(
                      Assets.imagesDark,
                      colorFilter: ColorFilter.mode(
                        isDark ? Colors.white : AppColors.blueLight,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
