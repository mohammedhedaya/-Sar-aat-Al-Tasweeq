import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

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
          child: Column(
            children: [
              Image.asset(
                Assets.imagesApplogo,
                height: 225.h,
              ),
              Center(
                child: Text(
                  "قم بإدخال بريدك المسجل وقم بحفظه لإعادة\nتعيين كلمة مرور جديدة",
                  style: AppStyles.style12W400,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 30.h),
              CustomAuthTextField(
                fiiledColor: AppColors.whiteColor.withOpacity(0.10),
                hintText: "البريد الالكتروني",
                keyboardType: TextInputType.emailAddress,
                onChanged: (email) {},
              ),
              const Spacer(),
              CustomAuthBtn(
                onPressed: () {
                  context.push('/resetPasswordOTPView');
                },
                text: "التالي",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
