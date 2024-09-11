import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/assets.dart';
import 'package:shopping_chart/features/login/presentation/widgets/custom_buttom_to_reset_password.dart';
import 'package:shopping_chart/features/login/presentation/widgets/custom_login_icon.dart';
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
    final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;

    return Scaffold(
      backgroundColor: AppColors.darkGray,
      body: Stack(
        children: [
          Positioned(
            right: 0,
            top: 200.h,
            child: SizedBox(
              height: 180.h,
              width: 180.w,
              child: SvgPicture.asset(
                AppAssets.ellipse3,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              height: 300.h,
              width: double.infinity,
              child: SvgPicture.asset(
                AppAssets.ellipse2,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 150.h,
            child: SizedBox(
              height: 150.h,
              child: SvgPicture.asset(
                AppAssets.ellipse1,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: -50.w,
            child: SizedBox(
              height: 230.h,
              width: 230.w,
              child: SvgPicture.asset(
                AppAssets.ellipse4,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Content Widgets
          const HelloAndChangeLang(),
          const CustomTextFormFields(),
          const CustomButtomToResetPassword(),
          Positioned(
            top: 650.h,
            right: 30.w,
            child: const CustomLoginIcon(),
          ),
        ],
      ),
    );
  }
}
