import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import '../cubit/auth_cubit.dart';
import '../cubit/auth_state.dart';
import 'auth_text_field.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        AuthCubit cubit = BlocProvider.of<AuthCubit>(context);
        final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
        return SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Form(
              key: cubit.signUpFormKey,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: SvgPicture.asset(
                      Assets.imagesWhitecircle,
                      height: 200.h,
                      fit: BoxFit.fill,
                      colorFilter: ColorFilter.mode(
                          isDark ? AppColors.whiteColor : AppColors.blueLight,
                          BlendMode.srcIn),
                    ),
                  ),
                  Positioned(
                    top: 30.h,
                    right: 24.h,
                    child: Text(
                      "signup".tr(context: context),
                      style: AppStyles.style40W600.copyWith(
                        color: AppColors.blackColor,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 250.h,
                    left: 41.w,
                    right: 26.w,
                    child: Column(
                      children: [
                        CustomAuthTextField(
                          fiiledColor: AppColors.whiteColor.withOpacity(0.10),
                          hintText: "first_name".tr(context: context),
                          onChanged: (firstName) {
                            cubit.firstName = firstName;
                          },
                        ),
                        SizedBox(height: 50.h),
                        CustomAuthTextField(
                          fiiledColor: AppColors.whiteColor.withOpacity(0.10),
                          hintText: "second_name".tr(context: context),
                          onChanged: (secondName) {
                            cubit.secondName = secondName;
                          },
                        ),
                        SizedBox(height: 50.h),
                        CustomAuthTextField(
                          fiiledColor: AppColors.whiteColor.withOpacity(0.10),
                          hintText: "last_name".tr(context: context),
                          onChanged: (lastName) {
                            cubit.lastName = lastName;
                          },
                        ),
                        SizedBox(height: 50.h),
                        CustomAuthTextField(
                          fiiledColor: AppColors.whiteColor.withOpacity(0.10),
                          hintText: 'email'.tr(context: context),
                          keyboardType: TextInputType.emailAddress,
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
                          onChanged: (email) {
                            cubit.email = email;
                          },
                        ),
                      ],
                    ),
                  ),
                  context.locale == const Locale('en')
                      ? Positioned(
                          bottom: 0,
                          right: -50.w,
                          child: Container(
                            height: 170.h,
                            width: 170.w,
                            decoration: BoxDecoration(
                              color: isDark
                                  ? AppColors.whiteColor
                                  : AppColors.blueLight,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(300),
                              ),
                            ),
                          ),
                        )
                      : Positioned(
                          bottom: 0,
                          left: -50.w,
                          child: Container(
                            height: 170.h,
                            width: 170.w,
                            decoration: BoxDecoration(
                              color: isDark
                                  ? AppColors.whiteColor
                                  : AppColors.blueLight,
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(300),
                              ),
                            ),
                          ),
                        ),
                  Positioned(
                    bottom: 65.h,
                    left: 41.w,
                    child: Row(
                      children: [
                        Text(
                          "account_registration".tr(context: context),
                          style: AppStyles.style32W700,
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.25),
                        InkWell(
                          onTap: () {
                            if (cubit.signUpFormKey.currentState!.validate()) {
                              context.push('/signUpProfileView');
                            }
                          },
                          child: Container(
                            constraints: BoxConstraints(
                              minHeight: 64.h,
                              minWidth: 64.w,
                            ),
                            decoration: const BoxDecoration(
                              color: AppColors.loginBtn,
                              shape: BoxShape.circle,
                            ),
                            child: context.locale == const Locale('en')
                                ? Center(
                                    child: Transform.flip(
                                      flipX: true,
                                      child: SvgPicture.asset(
                                        Assets.imagesArrowForwardLoginPage,
                                      ),
                                    ),
                                  )
                                : Center(
                                    child: SvgPicture.asset(
                                      Assets.imagesArrowForwardLoginPage,
                                    ),
                                  ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
