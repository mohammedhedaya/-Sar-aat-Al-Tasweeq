import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../cubit/auth_cubit.dart';
import '../../cubit/auth_state.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_style.dart';
import '../../../../../core/utils/assets.dart';
import '../../widgets/auth_btn.dart';
import '../../widgets/auth_text_field.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 25),
          child: BlocConsumer<AuthCubit, AuthState>(
            listener: (context, state) {},
            builder: (context, state) {
              AuthCubit cubit = BlocProvider.of<AuthCubit>(context);
              return Form(
                key: cubit.emailResetPasswordFormKey,
                child: Column(
                  children: [
                    Image.asset(
                      Assets.imagesApplogo,
                      height: 225.h,
                    ),
                    Center(
                      child: Text(
                        "for_return_password".tr(context: context),
                        style: AppStyles.style12W400.copyWith(
                          color: AppColors.whiteColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    CustomAuthTextField(
                      fiiledColor: AppColors.whiteColor.withOpacity(0.10),
                      hintText: "email".tr(context: context),
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (email) {},
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
                    const Spacer(),
                    CustomAuthBtn(
                      onPressed: () {
                        if (cubit.emailResetPasswordFormKey.currentState!
                            .validate()) {
                          context.push('/resetPasswordOTPView');
                        }
                      },
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
