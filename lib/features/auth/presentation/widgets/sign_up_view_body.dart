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
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: isDark
                  ? const AssetImage(Assets.imagesSignupbgDark)
                  : const AssetImage(Assets.imagesSignupbgLight),
              fit: BoxFit.fill,
            ),
          ),
          child: Form(
            key: cubit.signUpFormKey,
            child: ListView(
              children: [
                SizedBox(height: 57.h),
                Padding(
                  padding: EdgeInsetsDirectional.only(start: 26.w, end: 41.w),
                  child: Column(
                    children: [
                      Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Text(
                          "signup".tr(context: context),
                          style: AppStyles.style40W600.copyWith(
                            color: isDark
                                ? AppColors.blackColor
                                : AppColors.whiteColor,
                          ),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.19),
                      CustomAuthTextField(
                        fiiledColor: isDark
                            ? AppColors.whiteColor.withOpacity(0.10)
                            : const Color(0xff85A0B7),
                        hintText: "first_name".tr(context: context),
                        onChanged: (firstName) {
                          cubit.firstName = firstName;
                        },
                      ),
                      SizedBox(height: 25.h),
                      CustomAuthTextField(
                        fiiledColor: isDark
                            ? AppColors.whiteColor.withOpacity(0.10)
                            : const Color(0xff85A0B7),
                        hintText: "second_name".tr(context: context),
                        onChanged: (secondName) {
                          cubit.secondName = secondName;
                        },
                      ),
                      SizedBox(height: 25.h),
                      CustomAuthTextField(
                        fiiledColor: isDark
                            ? AppColors.whiteColor.withOpacity(0.10)
                            : const Color(0xff85A0B7),
                        hintText: "last_name".tr(context: context),
                        onChanged: (lastName) {
                          cubit.lastName = lastName;
                        },
                      ),
                      SizedBox(height: 25.h),
                      CustomAuthTextField(
                        fiiledColor: isDark
                            ? AppColors.whiteColor.withOpacity(0.10)
                            : const Color(0xff85A0B7),
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
                SizedBox(height: 25.h),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    context.locale == const Locale('en')
                        ? Positioned(
                            bottom: -120.h,
                            right: -25.w,
                            child: Container(
                              height: 170.h,
                              width: 170.w,
                              decoration: BoxDecoration(
                                color: isDark
                                    ? AppColors.whiteColor
                                    : AppColors.blueLight,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(300.r),
                                ),
                              ),
                            ),
                          )
                        : Positioned(
                            bottom: -85.h,
                            left: -25.w,
                            child: Container(
                              height: 170.h,
                              width: 170.w,
                              decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(300.r),
                                ),
                              ),
                            ),
                          ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.only(start: 26.w, end: 41.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(),
                          Text(
                            "account_registration".tr(context: context),
                            style: AppStyles.style32W700.copyWith(
                              color: isDark
                                  ? AppColors.whiteColor
                                  : AppColors.blueLight,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              if (cubit.signUpFormKey.currentState!
                                  .validate()) {
                                context.push('/signUpProfileView');
                              }
                            },
                            child: Container(
                              constraints: BoxConstraints(
                                minHeight: 64.h,
                                minWidth: 64.w,
                              ),
                              decoration: BoxDecoration(
                                color: isDark
                                    ? AppColors.loginBtn
                                    : AppColors.blueLight,
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
              ],
            ),
          ),
        );
      },
    );
  }
}
