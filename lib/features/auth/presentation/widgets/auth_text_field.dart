import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class CustomAuthTextField extends StatelessWidget {
  const CustomAuthTextField({
    super.key,
    required this.hintText,
    this.onChanged,
    this.controller,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
    this.textAlign,
    this.validator,
    this.obscureText,
    this.prefix,
    this.fiiledColor,
    this.hintStyle,
    this.readOnly,
    this.minLines = 1,
    this.maxLines,
    this.onFieldSubmitted,
  });

  final bool? readOnly;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Widget? prefix;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextAlign? textAlign;
  final String? Function(String?)? validator;
  final bool? obscureText;
  final Color? fiiledColor;
  final TextStyle? hintStyle;
  final int? minLines;
  final int? maxLines;
  final void Function(String)? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return TextFormField(
      readOnly: readOnly ?? false,
      controller: controller,
      onFieldSubmitted: onFieldSubmitted,
      onChanged: onChanged,
      keyboardType: keyboardType,
      cursorColor: AppColors.whiteColor,
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(
        color: isDark ? AppColors.whiteColor : AppColors.blackColor,
      ),
      validator: validator ??
          (value) {
            if (value == null || value.isEmpty) {
              return "defaultValidation".tr(context: context);
            }
            return null;
          },
      obscureText: obscureText ?? false,
      minLines: minLines,
      maxLines: maxLines ?? 1,
      decoration: InputDecoration(
        errorStyle: TextStyle(
          color: isDark ? AppColors.yellowLight : Colors.red,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r),
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.w,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r),
          borderSide: BorderSide(
            color: isDark ? Colors.transparent : AppColors.blueLight,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r),
          borderSide: BorderSide(
            color: isDark ? Colors.transparent : AppColors.blueLight,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r),
          borderSide: BorderSide(
            color: isDark ? Colors.transparent : AppColors.blueLight,
            width: 2.0,
          ),
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        prefix: prefix,
        hintText: hintText,
        hintStyle: hintStyle ?? AppStyles.style18W400,
        filled: true,
        fillColor: fiiledColor ?? AppColors.whiteColor.withOpacity(0.10),
      ),
    );
  }
}
