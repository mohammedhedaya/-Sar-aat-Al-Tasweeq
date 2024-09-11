import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/features/auth/presentation/widgets/auth_btn.dart';
import 'package:shopping_chart/features/auth/presentation/widgets/auth_text_field.dart';

class ResetNewPasswordView extends StatelessWidget {
  const ResetNewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          children: [
            SizedBox(height: 200.h),
            Text(
              'كلمة السر الجديدة',
              style: AppStyles.style12W400,
            ),
            SizedBox(height: 25.h),
            CustomAuthTextField(
              hintText: "************",
              textAlign: TextAlign.center,
              suffixIcon: IconButton(
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
              hintText: "************",
              textAlign: TextAlign.center,
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.visibility_outlined,
                  color: AppColors.visibilityColor,
                ),
              ),
              onChanged: (value) {},
            ),
            const Spacer(),
            CustomAuthBtn(
              onPressed: () {},
              text: "التالي",
            ),
          ],
        ),
      ),
    );
  }
}
