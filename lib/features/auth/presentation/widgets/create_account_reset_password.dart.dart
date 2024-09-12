import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class CreateAccountAndResetPassword extends StatelessWidget {
  const CreateAccountAndResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30.h,
      left: 0,
      right: 0,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                context.push('/resetPasswordView');
              },
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r),
                  side: const BorderSide(color: AppColors.whiteColor),
                ),
              ),
              child: Text(
                "نسيت كلمة المرور",
                style: AppStyles.style18W300,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.whiteColor),
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: TextButton(
                onPressed: () {
                  GoRouter.of(context).push('/signUpView');
                },
                child: Text(
                  "إنشاء حساب",
                  style: AppStyles.style18W900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
