import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/core/utils/assets.dart';
import 'package:shopping_chart/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:shopping_chart/features/auth/presentation/cubit/auth_state.dart';
import 'package:shopping_chart/features/auth/presentation/widgets/auth_text_field.dart';
import 'package:shopping_chart/features/auth/presentation/widgets/dashed_circle_avatar.dart_painter.dart';
import 'package:shopping_chart/features/auth/presentation/widgets/terms_and_condition.dart';

class SignUpProfileView extends StatelessWidget {
  const SignUpProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                      Center(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomPaint(
                              size: const Size(150, 150),
                              painter: DashedCirclePainter(),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: InkWell(
                                onTap: () {},
                                child: const CircleAvatar(
                                  radius: 24,
                                  backgroundColor: Colors.black,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 29.h),
                      Text(
                        "صورة الملف الشخصى",
                        style: AppStyles.style20W400,
                      ),
                      SizedBox(height: 75.h),
                      CustomAuthTextField(
                        hintText: "رقم الهاتف",
                        keyboardType: TextInputType.phone,
                        prefixIcon: InkWell(
                          onTap: () {},
                          child: Expanded(
                            child: Container(
                              constraints: BoxConstraints(
                                minHeight: 67.h,
                                minWidth: 95.w,
                              ),
                              width: 95.w,
                              height: 70.h,
                              decoration: const BoxDecoration(
                                color: Color(0xffD9D9D9),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                ),
                              ),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.keyboard_arrow_down,
                                    color: AppColors.blackColor,
                                  ),
                                  SizedBox(width: 5.w),
                                  SvgPicture.asset(
                                    Assets.imagesSuadiFlag,
                                  ),
                                  SizedBox(width: 5.w),
                                  Text(
                                    "966",
                                    style: AppStyles.style16W400.copyWith(
                                      color: AppColors.blackColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 23.h),
                      CustomAuthTextField(
                        hintText: "كلمة السر",
                        prefixIcon: IconButton(
                          onPressed: () {
                            cubit.obscurePasswordText();
                          },
                          color: AppColors.visibilityColor,
                          icon: Icon(
                            cubit.obscurePasswordTextValue == true
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                          ),
                        ),
                        obscureText: cubit.obscurePasswordTextValue,
                        onChanged: (password) {
                          cubit.password = password;
                        },
                      ),
                      SizedBox(height: 23.h),
                      CustomAuthTextField(
                        hintText: "تأكيد كلمة السر",
                        prefixIcon: IconButton(
                          onPressed: () {
                            cubit.obscurePasswordText();
                          },
                          color: AppColors.visibilityColor,
                          icon: Icon(
                            cubit.obscurePasswordTextValue == true
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                          ),
                        ),
                        obscureText: cubit.obscurePasswordTextValue,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'هذا الحقل مطلوب';
                          } else if (cubit.password != value) {
                            return 'كلمة السر غير متطابقة';
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
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                height: 60.h,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: AppColors.dimGray,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.keyboard_arrow_down,
                                      color: AppColors.whiteColor,
                                      size: 40,
                                    ),
                                    SizedBox(width: 25.w),
                                    Text(
                                      "المدينة",
                                      style: AppStyles.style18W400,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 6.w),
                          Expanded(
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                height: 60.h,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: AppColors.dimGray,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.keyboard_arrow_down,
                                      color: AppColors.whiteColor,
                                      size: 40,
                                    ),
                                    SizedBox(width: 25.w),
                                    SvgPicture.asset(
                                      Assets.imagesSuadiFlag,
                                    ),
                                  ],
                                ),
                              ),
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
                            if (cubit.signUpProfileFormKey.currentState!
                                .validate()) {
                              context.push("/signUpOTPView");
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.blackColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          child: Text(
                            "التالى",
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
