import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/features/login/presentation/widgets/custom_buttom_to_reset_password.dart';
import 'package:shopping_chart/features/login/presentation/widgets/hello_and_change_lang.dart';
import 'package:shopping_chart/features/login/presentation/widgets/text_form_field.dart';

class CustomPositioned extends StatefulWidget {
  const CustomPositioned({super.key});

  @override
  State<CustomPositioned> createState() => _CustomPositionedState();
}

class _CustomPositionedState extends State<CustomPositioned> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 0,
          top: 200,
          child: Container(
            height: 180.h,
            width: 180.w,
            decoration: const BoxDecoration(
              color: AppColors.silverPink,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(300),
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: AppColors.miniGrayColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(105),
                bottomLeft: Radius.circular(105),
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 150,
          child: Container(
            height: 150,
            decoration: const BoxDecoration(
              color: AppColors.slightlyDesaturatedRed,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(999),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: -50,
          child: Container(
            height: 230.h,
            width: 230.w,
            decoration: const BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(300),
              ),
            ),
          ),
        ),
        const HelloAndChangeLang(),
        const CustomTextFormFields(),
        const CustomButtomToResetPassword(),
      ],
    );
  }
}
