import 'package:flutter/material.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_text_style.dart';

class SocialMediaCard extends StatelessWidget {
  final String imagePath;
  final String label;

  const SocialMediaCard({
    super.key,
    required this.imagePath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Container(
              height: 100.h, // Use h for height scaling
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: AppColors.darkGray,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.r),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 5.h),
        Text(
          label,
          style: AppStyles.style12W400.copyWith(fontSize: 12.sp),
        ),
      ],
    );
  }
}

class SocialMediaPage extends StatelessWidget {
  const SocialMediaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SocialMediaCard(
              imagePath: Assets.whatsApp,
              label: 'WHATSAPP',
            ),
            SocialMediaCard(
              imagePath: Assets.telegram,
              label: 'TELEGRAM',
            ),
            SocialMediaCard(
              imagePath: Assets.instagram,
              label: 'INSTAGRAM',
            ),
          ],
        ),
      ),
    );
  }
}
