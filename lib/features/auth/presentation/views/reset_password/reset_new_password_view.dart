import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_style.dart';
import '../../../../../core/utils/assets.dart';
import '../../cubit/auth_cubit.dart';
import '../../cubit/auth_state.dart';
import '../../widgets/auth_btn.dart';
import '../../widgets/auth_text_field.dart';

class ResetNewPasswordView extends StatelessWidget {
  const ResetNewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:
              EdgeInsetsDirectional.symmetric(horizontal: 25.h, vertical: 20.w),
          child: BlocConsumer<AuthCubit, AuthState>(
            listener: (context, state) {},
            builder: (context, state) {
              AuthCubit cubit = BlocProvider.of<AuthCubit>(context);
              return Form(
                key: cubit.resetNewPasswordFormKey,
                child: Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Image.asset(
                              Assets.imagesApplogo,
                              height: 225.h,
                            ),
                            Text(
                              "new_password".tr(context: context),
                              style: AppStyles.style12W400.copyWith(
                                color: isDark
                                    ? AppColors.whiteColor
                                    : AppColors.blackColor,
                              ),
                            ),
                            SizedBox(height: 25.h),
                            CustomAuthTextField(
                              fiiledColor: isDark
                                  ? AppColors.whiteColor.withOpacity(0.10)
                                  :  AppColors.fillLight,
                              hintText: "",
                              textAlign: TextAlign.center,
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
                                  return "passwordValidation"
                                      .tr(context: context);
                                }

                                const passwordPattern =
                                    r'^(?=.*[A-Z])(?=.*[a-z])(?=(?:.*\d){6,}).{6,}$';
                                final regExp = RegExp(passwordPattern);

                                if (!regExp.hasMatch(password)) {
                                  return "checkPassword".tr(context: context);
                                }

                                return null;
                              },
                            ),
                            SizedBox(height: 25.h),
                            Text(
                              "confirm_new_password".tr(context: context),
                              style: AppStyles.style12W400.copyWith(
                                color: isDark
                                    ? AppColors.whiteColor
                                    : AppColors.blackColor,
                              ),
                            ),
                            SizedBox(height: 23.h),
                            CustomAuthTextField(
                              fiiledColor: isDark
                                  ? AppColors.whiteColor.withOpacity(0.10)
                                  :  AppColors.fillLight,
                              hintText: "",
                              textAlign: TextAlign.center,
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
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "defaultValidation"
                                      .tr(context: context);
                                } else if (cubit.password != value) {
                                  return "passwordDontMatch"
                                      .tr(context: context);
                                }
                                return null;
                              },
                              onChanged: (confirmpassword) {
                                cubit.confirmPassword = confirmpassword;
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomAuthBtn(
                      onPressed: () {
                        if (cubit.resetNewPasswordFormKey.currentState!
                            .validate()) {
                          context.go("/");
                        }
                      },
                      backgroundColor: isDark ? null : AppColors.blueLight,
                      text: "next".tr(context: context),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
