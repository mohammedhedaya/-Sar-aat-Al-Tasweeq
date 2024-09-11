import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import ScreenUtil
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/assets.dart';

class SwithTheme extends StatefulWidget {
  const SwithTheme({super.key});

  @override
  State<SwithTheme> createState() => _SwithThemeState();
}

class _SwithThemeState extends State<SwithTheme> {
  bool _isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.2.sw, // Use ScreenUtil to set width as a percentage of screen width
      height: 0.1.sw, // Use ScreenUtil to set height as a percentage of screen width
      decoration: BoxDecoration(
        color: AppColors.mixWhiteAndGray,
        borderRadius: BorderRadius.circular(30.r), // Use ScreenUtil for border radius
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _isDarkTheme = false;
              });
            },
            child: SvgPicture.asset(
              AppAssets.lightIcon,
              width: 29.w, // Use ScreenUtil for width
              height: 30.h, // Use ScreenUtil for height
              color: !_isDarkTheme ? Colors.black : Colors.grey,
            ),
          ),
          SizedBox(width: 10.w), // Use ScreenUtil for spacing
          GestureDetector(
            onTap: () {
              setState(() {
                _isDarkTheme = true;
              });
            },
            child: SvgPicture.asset(
              AppAssets.darkIcon,
              width: 29.w, // Use ScreenUtil for width
              height: 30.h, // Use ScreenUtil for height
              color: _isDarkTheme ? Colors.black : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
