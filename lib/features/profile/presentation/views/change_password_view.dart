import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import '../../../auth/presentation/widgets/auth_btn.dart';
import '../../../auth/presentation/widgets/auth_text_field.dart';

class ProfileChangePasswordView extends StatelessWidget {
  const ProfileChangePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 20.h),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                Assets.imagesHomeBackground,
              ),
              alignment: Alignment.topCenter,
              opacity: 0.10,
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 62.h),
                      Text(
                        'كلمة السر االقديمه',
                        style: AppStyles.style12W400,
                      ),
                      SizedBox(height: 25.h),
                      CustomAuthTextField(
                        fiiledColor: AppColors.whiteColor.withOpacity(0.10),
                        hintText: "************",
                        textAlign: TextAlign.center,
                        prefixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.visibility_outlined,
                            color: AppColors.visibilityColor,
                          ),
                        ),
                        onChanged: (value) {},
                      ),
                      SizedBox(height: 25.h),
                      Text(
                        'تأكيد كلمة السر الجديدة',
                        style: AppStyles.style12W400,
                      ),
                      SizedBox(height: 23.h),
                      CustomAuthTextField(
                        fiiledColor: AppColors.whiteColor.withOpacity(0.10),
                        hintText: "************",
                        textAlign: TextAlign.center,
                        prefixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.visibility_outlined,
                            color: AppColors.visibilityColor,
                          ),
                        ),
                        onChanged: (value) {},
                      ),
                      SizedBox(height: 25.h),
                      Text(
                        'تأكيد كلمة السر الجديدة',
                        style: AppStyles.style12W400,
                      ),
                      SizedBox(height: 23.h),
                      CustomAuthTextField(
                        fiiledColor: AppColors.whiteColor.withOpacity(0.10),
                        hintText: "************",
                        textAlign: TextAlign.center,
                        prefixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.visibility_outlined,
                            color: AppColors.visibilityColor,
                          ),
                        ),
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                ),
              ),
              CustomAuthBtn(
                onPressed: () {},
                text: "حفظ",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
