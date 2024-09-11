import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/features/login/presentation/widgets/auth_text_field.dart';
import 'package:shopping_chart/features/login/presentation/widgets/swith_theme.dart';

class CustomLoginForm extends StatelessWidget {
  const CustomLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 350,
          left: 36,
          right: 36,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAuthTextField(
                hintText: "الأيميل",
                keyboardType: TextInputType.emailAddress,
                onChanged: (email) {},
              ),
              SizedBox(height: 20.h),
              CustomAuthTextField(
                hintText: "كلمة السر",
                prefixIcon: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    color: AppColors.visibilityColor,
                    Icons.visibility_outlined,
                  ),
                ),
                onChanged: (password) {},
              ),
              SizedBox(height: 26.h),
              const SwithTheme(),
            ],
          ),
        ),
      ],
    );
  }
}
