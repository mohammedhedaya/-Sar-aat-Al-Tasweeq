import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_colors.dart';
import '../cubit/auth_cubit.dart';
import '../cubit/auth_state.dart';
import 'auth_text_field.dart';
import 'custom_login_icon.dart';
import 'swith_theme.dart';

class CustomLoginForm extends StatelessWidget {
  const CustomLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        AuthCubit cubit = BlocProvider.of<AuthCubit>(context);
        final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
        return Form(
          key: cubit.loginFormKey,
          child: Stack(
            children: [
              Positioned(
                top: 350,
                left: 36,
                right: 36,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomAuthTextField(
                      fiiledColor: isDark
                          ? AppColors.whiteColor.withOpacity(0.10)
                          :  AppColors.fillLight,
                      hintText: "email".tr(context: context),
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (email) {
                        cubit.email = email;
                      },
                      validator: (email) {
                        if (email == null || email.isEmpty) {
                          return "emailValidation".tr(context: context);
                        } else if (!RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                        ).hasMatch(email)) {
                          return "trueEmailValidation".tr(context: context);
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20.h),
                    CustomAuthTextField(
                      fiiledColor: isDark
                          ? AppColors.whiteColor.withOpacity(0.10)
                          :  AppColors.fillLight,
                      hintText: "password".tr(context: context),
                      suffixIcon: IconButton(
                        onPressed: () {
                          cubit.obscurePasswordText();
                        },
                        color: AppColors.visibilityColor,
                        icon: Icon(
                          cubit.obscurePasswordTextValue == true
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: Colors.white,
                        ),
                      ),
                      obscureText: cubit.obscurePasswordTextValue,
                      onChanged: (password) {
                        cubit.password = password;
                      },
                      validator: (password) {
                        if (password == null || password.isEmpty) {
                          return "passwordValidation".tr(context: context);
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 26.h),
                    const SwithTheme(),
                  ],
                ),
              ),
              Positioned(
                bottom: 125.h,
                left: 0.w,
                child: CustomLoginIcon(
                  onTap: () {
                    if (cubit.loginFormKey.currentState!.validate()) {
                      context.go("/navBarView");
                    }
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
