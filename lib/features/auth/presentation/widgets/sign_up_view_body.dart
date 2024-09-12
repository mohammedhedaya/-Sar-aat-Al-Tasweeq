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
                    ),
                  ),
                  Positioned(
                    top: 30,
                    right: 24,
                    child: Text(
                      "إنشاء حساب",
                      style: AppStyles.style40W600.copyWith(
                        color: AppColors.blackColor,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 230,
                    left: 41,
                    right: 26,
                    child: Column(
                      children: [
                        CustomAuthTextField(
                          hintText: 'الاسم الأول',
                          onChanged: (firstName) {
                            cubit.firstName = firstName;
                          },
                        ),
                        SizedBox(height: 40.h),
                        CustomAuthTextField(
                          hintText: 'الاسم الثانى',
                          onChanged: (secondName) {
                            cubit.secondName = secondName;
                          },
                        ),
                        SizedBox(height: 40.h),
                        CustomAuthTextField(
                          hintText: 'الاسم الأخير',
                          onChanged: (lastName) {
                            cubit.lastName = lastName;
                          },
                        ),
                        SizedBox(height: 40.h),
                        CustomAuthTextField(
                          hintText: 'الأيميل',
                          keyboardType: TextInputType.emailAddress,
                          validator: (email) {
                            if (email == null || email.isEmpty) {
                              return 'من فضلك قم بادخال بريد الكتروني';
                            } else if (!RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                            ).hasMatch(email)) {
                              return 'من فضلك قم بادخال بريد الكتروني صحيح';
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
                  Positioned(
                    bottom: 0,
                    left: -50.w,
                    child: Container(
                      height: 170.h,
                      width: 170.w,
                      decoration: const BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.only(
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
                          "تسجيل\nالحساب",
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
                            child: Center(
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
