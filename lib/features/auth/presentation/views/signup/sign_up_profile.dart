import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../widgets/cusom_add_profile_image_widget.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_style.dart';
import '../../cubit/auth_cubit.dart';
import '../../cubit/auth_state.dart';
import '../../widgets/auth_text_field.dart';
import '../../widgets/terms_and_condition.dart';

class SignUpProfileView extends StatelessWidget {
  const SignUpProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {
                context.pop();
              },
              icon: const Icon(
                Icons.arrow_forward_ios_outlined,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 34.w),
            child: BlocConsumer<AuthCubit, AuthState>(
              listener: (context, state) {},
              builder: (context, state) {
                AuthCubit cubit = BlocProvider.of<AuthCubit>(context);
                return Form(
                  key: cubit.signUpProfileFormKey,
                  child: Column(
                    children: [
                      SizedBox(height: 70.h),
                      CustomAddProfileImageWidget(
                        onImageSelected: (file) =>
                            cubit.setProfileImage(file, context),
                        errorText: cubit.profileImageError,
                      ),
                      SizedBox(height: 29.h),
                      Text(
                        "profile_image".tr(context: context),
                        style: AppStyles.style20W400.copyWith(
                          color: isDark
                              ? AppColors.whiteColor
                              : AppColors.blueLight,
                        ),
                      ),
                      SizedBox(height: 75.h),
                      CustomAuthTextField(
                        fiiledColor: isDark
                            ? AppColors.whiteColor.withOpacity(0.10)
                            : AppColors.fillLight,
                        hintText: "phone".tr(context: context),
                        keyboardType: TextInputType.phone,
                        suffixIcon: Container(
                          constraints: BoxConstraints(
                            minWidth: 95.w,
                            maxWidth: 130.w,
                          ),
                          height: 70.h,
                          decoration: BoxDecoration(
                            color: isDark ? const Color(0xffD9D9D9) : null,
                            border: Border.all(
                              color: isDark
                                  ? Colors.transparent
                                  : AppColors.blueLight,
                            ),
                            gradient: isDark
                                ? null
                                : const LinearGradient(
                                    colors: [
                                      Color(0xffAC9238),
                                      Color(0xffDBBA47),
                                    ],
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                  ),
                            borderRadius: context.locale == const Locale('en')
                                ? BorderRadius.only(
                                    topRight: Radius.circular(20.r),
                                    bottomRight: Radius.circular(20.r),
                                  )
                                : BorderRadius.only(
                                    topLeft: Radius.circular(20.r),
                                    bottomLeft: Radius.circular(20.r),
                                  ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: CountryCodePicker(
                                  onChanged: (value) {},
                                  initialSelection: 'SA',
                                  favorite: const ['+966', 'SA'],
                                  textStyle:
                                      const TextStyle(color: Colors.black),
                                  barrierColor:
                                      const Color(0xfffff9f9).withOpacity(0.33),
                                  textOverflow: TextOverflow.ellipsis,
                                  boxDecoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.r),
                                  ),
                                  padding: EdgeInsets.zero,
                                  dialogTextStyle: const TextStyle(
                                    color: Colors.white,
                                  ),
                                  flagDecoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.arrow_drop_down,
                                size: 34,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 23.h),
                      CustomAuthTextField(
                        fiiledColor: isDark
                            ? AppColors.whiteColor.withOpacity(0.10)
                            : AppColors.fillLight,
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
                            color: isDark
                                ? AppColors.whiteColor
                                : AppColors.blackColor,
                          ),
                        ),
                        obscureText: cubit.obscurePasswordTextValue,
                        validator: (password) {
                          if (password == null || password.isEmpty) {
                            return "passwordValidation".tr(context: context);
                          }

                          // One RegExp to check all conditions
                          const passwordPattern =
                              r'^(?=.*[A-Z])(?=.*[a-z])(?=(?:.*\d){6,}).{6,}$';
                          final regExp = RegExp(passwordPattern);

                          if (!regExp.hasMatch(password)) {
                            return "checkPassword".tr(context: context);
                          }

                          return null;
                        },
                        onChanged: (password) {
                          cubit.password = password;
                        },
                      ),
                      SizedBox(height: 23.h),
                      CustomAuthTextField(
                        fiiledColor: isDark
                            ? AppColors.whiteColor.withOpacity(0.10)
                            : AppColors.fillLight,
                        hintText: "confirm_password".tr(context: context),
                        suffixIcon: IconButton(
                          onPressed: () {
                            cubit.obscurePasswordText();
                          },
                          color: AppColors.visibilityColor,
                          icon: Icon(
                            cubit.obscurePasswordTextValue == true
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: isDark
                                ? AppColors.whiteColor
                                : AppColors.blackColor,
                          ),
                        ),
                        obscureText: cubit.obscurePasswordTextValue,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "defaultValidation".tr(context: context);
                          } else if (cubit.password != value) {
                            return "passwordDontMatch".tr(context: context);
                          }
                          return null;
                        },
                        onChanged: (confirmpassword) {
                          cubit.confirmPassword = confirmpassword;
                        },
                      ),
                      SizedBox(height: 17.h),
                      Row(
                        children: [
                          Expanded(
                            child: FormField<String>(
                              builder: (FormFieldState<String> state) {
                                return InputDecorator(
                                  decoration: InputDecoration(
                                    enabledBorder: isDark
                                        ? InputBorder.none
                                        : OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: AppColors.blueLight,
                                              width: 1.w,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20.r),
                                          ),
                                    border: isDark
                                        ? InputBorder.none
                                        : OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: AppColors.blueLight,
                                              width: 1.w,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20.r),
                                          ),
                                    errorText:
                                        state.hasError ? state.errorText : null,
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20.r),
                                      borderSide: const BorderSide(
                                        color: Colors.red,
                                      ),
                                    ),
                                    contentPadding: EdgeInsets.zero,
                                    errorStyle: TextStyle(
                                      color: isDark
                                          ? AppColors.yellowLight
                                          : Colors.red,
                                    ),
                                  ),
                                  child: Container(
                                    height: 60.h,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: isDark
                                          ? AppColors.whiteColor
                                              .withOpacity(0.10)
                                          : AppColors.fillLight,
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: CountryCodePicker(
                                            onChanged: (value) {
                                              cubit.setSelectedCountry(
                                                  value.code);
                                              state.didChange(value.code);
                                            },
                                            initialSelection: 'SA',
                                            favorite: const ['+966', 'SA'],
                                            barrierColor:
                                                const Color(0xfffff9f9)
                                                    .withOpacity(0.33),
                                            textOverflow: TextOverflow.ellipsis,
                                            boxDecoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8.r),
                                            ),
                                            dialogTextStyle: const TextStyle(
                                              color: Colors.white,
                                            ),
                                            padding: EdgeInsets.zero,
                                            showFlag: true,
                                            showOnlyCountryWhenClosed: true,
                                            flagDecoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5.r),
                                            ),
                                          ),
                                        ),
                                        const Icon(
                                          Icons.arrow_drop_down,
                                          size: 34,
                                          color: Colors.black,
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "defaultValidation"
                                      .tr(context: context);
                                }
                                return null;
                              },
                            ),
                          ),
                          SizedBox(width: 6.w),
                          Expanded(
                            child: CustomAuthTextField(
                              onChanged: (value) {},
                              hintText: "city".tr(context: context),
                              textAlign: TextAlign.center,
                              fiiledColor: isDark
                                  ? AppColors.whiteColor.withOpacity(0.10)
                                  : AppColors.fillLight,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      const TermsConditionsWidget(),
                      SizedBox(height: 22.h),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            if (cubit.validateSignUpProfile(context)) {
                              context.push("/signUpOTPView");
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: isDark
                                ? AppColors.blackColor
                                : AppColors.blueLight,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          child: Text(
                            "next".tr(context: context),
                            style: AppStyles.style14W600,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
