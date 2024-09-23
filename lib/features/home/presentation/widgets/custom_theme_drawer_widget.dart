import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/assets.dart';

class CustomThemeDrawerWidget extends StatefulWidget {
  final bool isDarkTheme;
  final ValueChanged<bool> onThemeChange;

  const CustomThemeDrawerWidget({
    super.key,
    required this.isDarkTheme,
    required this.onThemeChange,
  });

  @override
  State<CustomThemeDrawerWidget> createState() =>
      _CustomThemeDrawerWidgetState();
}

class _CustomThemeDrawerWidgetState extends State<CustomThemeDrawerWidget> {
  bool _isDark = false;

  @override
  void initState() {
    super.initState();
    // Check the current theme mode and set the initial state
    AdaptiveTheme.getThemeMode().then((themeMode) {
      setState(() {
        _isDark = themeMode == AdaptiveThemeMode.dark;
      });
    });
  }

  void _toggleTheme(bool isDark) {
    setState(() {
      _isDark = isDark;
    });
    if (isDark) {
      AdaptiveTheme.of(context).setDark();
    } else {
      AdaptiveTheme.of(context).setLight();
    }
    widget.onThemeChange(isDark);
  }

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
            onTap: () => _toggleTheme(false),
            child: Container(
              decoration: BoxDecoration(
                color: _isDark ? Colors.transparent : Colors.black,
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: SvgPicture.asset(
                  Assets.imagesLight,
                  height: 14.h,
                  colorFilter: ColorFilter.mode(
                    _isDark ? Colors.black : Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 3.w),
          GestureDetector(
            onTap: () => _toggleTheme(true),
            child: Container(
              decoration: BoxDecoration(
                color: _isDark ? Colors.black : Colors.transparent,
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: SvgPicture.asset(
                  Assets.imagesDark,
                  height: 14.h,
                  colorFilter: ColorFilter.mode(
                    _isDark ? Colors.white : Colors.black,
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
