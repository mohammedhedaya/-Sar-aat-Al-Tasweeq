import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
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
          AdaptiveTheme.of(context).toggleThemeMode();
        },
        child: Container(
          width: 0.2.sw,
          height: 0.1.sw,
          constraints: BoxConstraints(minHeight: 39.h, minWidth: 89.h),
          decoration: BoxDecoration(
            color: const Color(0xffD9D9D9),
            borderRadius: BorderRadius.circular(30.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  AdaptiveTheme.of(context).setLight();
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: isDark ? Colors.transparent : Colors.black,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: SvgPicture.asset(
                      Assets.imagesLight,
                      colorFilter: ColorFilter.mode(
                        isDark ? Colors.black : Colors.white,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 12.w),
              GestureDetector(
                onTap: () {
                  AdaptiveTheme.of(context).setDark();
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: isDark ? Colors.black : Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: SvgPicture.asset(
                      Assets.imagesDark,
                      colorFilter: ColorFilter.mode(
                        isDark ? Colors.white : Colors.black,
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
