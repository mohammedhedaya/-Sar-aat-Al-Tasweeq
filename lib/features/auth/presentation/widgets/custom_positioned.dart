import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/assets.dart';
import 'package:shopping_chart/features/auth/presentation/widgets/custom_buttom_to_reset_password.dart';
import 'package:shopping_chart/features/auth/presentation/widgets/custom_login_icon.dart';
import 'package:shopping_chart/features/auth/presentation/widgets/hello_and_change_lang.dart';
import 'package:shopping_chart/features/auth/presentation/widgets/text_form_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 0,
          top: 0,
          child: SizedBox(
            child: SvgPicture.asset(
              Assets.imagesLogincircle3,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: SizedBox(
            width: double.infinity,
            child: SvgPicture.asset(
              Assets.imagesLogincircle2,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 150.h,
          child: SizedBox(
            child: SvgPicture.asset(
              Assets.imagesLogincircle1,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: -50.w,
          child: Container(
            height: 200.h,
            width: 200.w,
            decoration: const BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(300),
              ),
            ),
          ),
        ),
        const HelloAndChangeLang(),
        const CustomLoginForm(),
        const CustomButtomToResetPassword(),
        Positioned(
          bottom: 125.h,
          right: 0.w,
          left: 0.w,
          child: const CustomLoginIcon(),
        ),
      ],
    );
  }
}
