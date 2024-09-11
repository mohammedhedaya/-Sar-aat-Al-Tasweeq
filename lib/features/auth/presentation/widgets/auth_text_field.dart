import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';

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
  });

  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextAlign? textAlign;
  final String? Function(String?)? validator;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      keyboardType: keyboardType,
      cursorColor: AppColors.whiteColor,
      textAlign: textAlign ?? TextAlign.right,
      style: const TextStyle(
        color: AppColors.whiteColor,
      ),
      validator: validator ??
          (value) {
            if (value == null || value.isEmpty) {
              return 'هذا الحقل مطلوب';
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
        hintText: hintText,
        hintStyle: AppStyles.style18W400,
        filled: true,
        fillColor: AppColors.dimGray,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
