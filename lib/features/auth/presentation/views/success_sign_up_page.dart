import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';

class SuccessSignUpPage extends StatelessWidget {
  const SuccessSignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 200.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45),
            child: Column(
              children: [
                const Center(
                  child: Icon(
                    Icons.check_circle_outline_sharp,
                    color: AppColors.whiteColor,
                    size: 140,
                  ),
                ),
                const SizedBox(height: 35),
                Text(
                  "تم تسجيل حسابك بنجاح",
                  style: AppStyles.style25W800,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 125.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
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
                    Text(
                      "أبدأ التسويق",
                      style: AppStyles.style32W700,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
