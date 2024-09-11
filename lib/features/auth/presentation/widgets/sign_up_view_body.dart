import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/core/utils/assets.dart';
import 'package:shopping_chart/features/auth/presentation/widgets/auth_text_field.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                onChanged: (firstName) {},
              ),
              SizedBox(height: 21.h),
              CustomAuthTextField(
                hintText: 'الاسم الثانى',
                onChanged: (secondName) {},
              ),
              SizedBox(height: 21.h),
              CustomAuthTextField(
                hintText: 'الاسم الأخير',
                onChanged: (lastName) {},
              ),
              SizedBox(height: 21.h),
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
                onChanged: (email) {},
              ),
              SizedBox(height: 7.h),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: -50,
          child: Container(
            height: 200.h,
            width: 200.w,
            decoration: const BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(300),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 110.h,
          left: 41.w,
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  context.push('/signUpProfileView');
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
              SizedBox(width: MediaQuery.of(context).size.width * 0.2),
              Text(
                "تسجيل\nالحساب",
                style: AppStyles.style32W700,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
