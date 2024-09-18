import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import ScreenUtil
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/assets.dart';

class SwithTheme extends StatefulWidget {
  const SwithTheme({super.key});

  @override
  State<SwithTheme> createState() => _SwithThemeState();
}

class _SwithThemeState extends State<SwithTheme> {
  bool _isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.topEnd,
      child: Container(
        width: 0.2.sw,
        height: 0.1.sw,
        constraints: const BoxConstraints(minHeight: 39, minWidth: 89),
        decoration: BoxDecoration(
          color: AppColors.mixWhiteAndGray,
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _isDarkTheme = true;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: _isDarkTheme ? Colors.black : Colors.transparent,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SvgPicture.asset(
                    Assets.imagesLight,
                    colorFilter: ColorFilter.mode(
                      _isDarkTheme ? Colors.white : Colors.black,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 12.w),
            GestureDetector(
              onTap: () {
                setState(() {
                  _isDarkTheme = false;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: _isDarkTheme ? Colors.transparent : Colors.black,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SvgPicture.asset(
                    Assets.imagesDark,
                    colorFilter: ColorFilter.mode(
                      !_isDarkTheme ? Colors.white : Colors.black,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
