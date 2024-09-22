import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/assets.dart';

class CustomThemeDrawerWidget extends StatefulWidget {
  const CustomThemeDrawerWidget({
    super.key,
  });

  @override
  State<CustomThemeDrawerWidget> createState() =>
      _CustomThemeDrawerWidgetState();
}

class _CustomThemeDrawerWidgetState extends State<CustomThemeDrawerWidget> {
  bool _isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 49.w,
      height: 21.h,
      decoration: BoxDecoration(
        color: AppColors.mixWhiteAndGray,
        borderRadius: BorderRadius.circular(50.r),
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
                  height: 14.h,
                  colorFilter: ColorFilter.mode(
                    _isDarkTheme ? Colors.white : Colors.black,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 3.w),
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
                  height: 14.h,
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
    );
  }
}
