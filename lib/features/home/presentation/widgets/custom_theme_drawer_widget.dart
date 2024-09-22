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
              widget.onThemeChange(true); // Notify parent of theme change
            },
            child: Container(
              decoration: BoxDecoration(
                color: widget.isDarkTheme ? Colors.black : Colors.transparent,
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: SvgPicture.asset(
                  Assets.imagesLight,
                  height: 14.h,
                  colorFilter: ColorFilter.mode(
                    widget.isDarkTheme ? Colors.white : Colors.black,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 3.w),
          GestureDetector(
            onTap: () {
              widget.onThemeChange(false); // Notify parent of theme change
            },
            child: Container(
              decoration: BoxDecoration(
                color: widget.isDarkTheme ? Colors.transparent : Colors.black,
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: SvgPicture.asset(
                  Assets.imagesDark,
                  height: 14.h,
                  colorFilter: ColorFilter.mode(
                    !widget.isDarkTheme ? Colors.white : Colors.black,
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
