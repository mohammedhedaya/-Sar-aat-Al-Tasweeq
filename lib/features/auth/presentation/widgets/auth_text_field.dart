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
    this.hintStyle, this.readOnly,
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

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly ?? false,
      controller: controller,
      onChanged: onChanged,
      keyboardType: keyboardType,
      cursorColor: AppColors.whiteColor,
      textAlign: textAlign ?? TextAlign.start,
      style: const TextStyle(
        color: AppColors.whiteColor,
      ),
      validator: validator ??
          (value) {
            if (value == null || value.isEmpty) {
              return "defaultValidation".tr(context: context);
            }
            return null;
          },
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        errorStyle: const TextStyle(
          color: AppColors.whiteColor,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        prefix: prefix,
        hintText: hintText,
        hintStyle: hintStyle ?? AppStyles.style18W400,
        filled: true,
        fillColor: fiiledColor ?? AppColors.dimGray,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
