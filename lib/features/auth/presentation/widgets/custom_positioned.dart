import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/assets.dart';
import 'create_account_reset_password.dart.dart';
import 'custom_login_form.dart';
import 'hello_and_change_lang.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
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
        context.locale == const Locale('en')
            ? Positioned(
                bottom: 0,
                right: -50.w,
                child: Container(
                  height: 200.h,
                  width: 200.w,
                  decoration: const BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(300),
                    ),
                  ),
                ),
              )
            : Positioned(
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
        const CreateAccountAndResetPassword(),
      ],
    );
  }
}
