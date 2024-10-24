import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import 'custom_launch_menu_btn.dart';

class LaunchAdTextField extends StatefulWidget {
  final String hintText;
  final VoidCallback onSuffixIconTap;
  final void Function(String)? onChanged;
  const LaunchAdTextField({
    super.key,
    required this.hintText,
    required this.onSuffixIconTap,
    this.onChanged,
  });

  @override
  State<LaunchAdTextField> createState() => _LaunchAdTextFieldState();
}

class _LaunchAdTextFieldState extends State<LaunchAdTextField> {
  bool _isExpanded = false;

  void _toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return Stack(
      children: [
        TextField(
          onChanged: widget.onChanged,
          cursorColor: Colors.teal,
          maxLines: 10,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: AppStyles.style12W700,
            filled: true,
            fillColor: isDark
                ? Colors.white.withOpacity(0.10)
                : const Color(0xff114f80).withOpacity(0.26),
            enabledBorder: OutlineInputBorder(
              borderSide: isDark
                  ? BorderSide.none
                  : const BorderSide(
                      color: AppColors.blueLight,
                    ),
              borderRadius: BorderRadius.circular(20.r),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: isDark
                  ? BorderSide.none
                  : const BorderSide(
                      color: AppColors.blueLight,
                    ),
              borderRadius: BorderRadius.circular(20.r),
            ),
          ),
          style: TextStyle(color: isDark ? Colors.white : Colors.black),
        ),
        Positioned(
          bottom: 20.h,
          left: 10.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (_isExpanded) ...[
                CustomLaunchMenuBtn(
                  onTap: () {},
                  icon: Assets.imagesMenuCamera,
                ),
                SizedBox(height: 8.h),
                CustomLaunchMenuBtn(
                  onTap: () {},
                  icon: Assets.imagesMenuFile,
                ),
                SizedBox(height: 8.h),
                CustomLaunchMenuBtn(
                  onTap: () {},
                  icon: Assets.imagesMenuImage,
                ),
                SizedBox(height: 8.h),
              ],
              GestureDetector(
                onTap: _toggleExpand,
                child: Container(
                  decoration: BoxDecoration(
                    color: _isExpanded ? const Color(0xffCC0000) : null,
                    shape: BoxShape.circle,
                    gradient: _isExpanded
                        ? null
                        : isDark
                            ? const LinearGradient(
                                colors: [
                                  Color(0xFF006066),
                                  Color(0xFF00C0CC),
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              )
                            : const LinearGradient(
                                colors: [
                                  Color(0xFFF9D053),
                                  Color(0xFF796727),
                                ],
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                              ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Icon(
                      _isExpanded ? Icons.close : Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        if (_isExpanded)
          Positioned(
            bottom: 20.h,
            right: 10.w,
            child: GestureDetector(
              onTap: () async {},
              child: CircleAvatar(
                radius: 15.r,
                backgroundColor: const Color(0xffB6B6B6),
                child: const Icon(
                  Icons.mic,
                  color: Colors.white,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
