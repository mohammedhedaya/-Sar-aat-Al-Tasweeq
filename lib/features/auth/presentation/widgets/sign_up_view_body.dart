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
            height: 190.h,
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
              const CustomAuthTextField(
                hintText: 'الاسم الأول',
              ),
              SizedBox(height: 21.h),
              const CustomAuthTextField(
                hintText: 'الاسم الثانى',
              ),
              SizedBox(height: 21.h),
              const CustomAuthTextField(
                hintText: 'الاسم الأخير',
              ),
              SizedBox(height: 21.h),
              const CustomAuthTextField(
                hintText: 'الأيميل',
                keyboardType: TextInputType.emailAddress,
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
          bottom: 115,
          left: 41,
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  context.push('/signupProfile');
                },
                child: Container(
                  constraints: const BoxConstraints(
                    minHeight: 64,
                    minWidth: 64,
                  ),
                  decoration: const BoxDecoration(
                    color: AppColors.circleGray,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.arrow_back_outlined,
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
              SizedBox(width: 80.w),
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
