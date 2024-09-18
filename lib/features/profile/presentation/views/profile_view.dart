import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import '../widgets/custom_item_include_names_and_phone.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                Assets.imagesHomeBackground,
              ),
              opacity: 0.10,
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              children: [
                SizedBox(height: 60.h),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        Assets.imagesImageInProfile,
                      ),
                    ),
                    SizedBox(width: 25.w),
                    Expanded(
                      child: Text(
                        "فيصل, عبدالعزيز",
                        style: AppStyles.style25W400,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50.h),
                CircularPercentIndicator(
                  radius: 50.0,
                  lineWidth: 5.0,
                  percent: 0.70,
                  backgroundColor: AppColors.blackColor,
                  progressColor: AppColors.whiteColor,
                  reverse: true,
                  center: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "6 يوم",
                        style: AppStyles.style14W800,
                      ),
                      Text(
                        "متبقي",
                        style: AppStyles.style14W300,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  "تنتهي في",
                  style: AppStyles.style14W800,
                  textAlign: TextAlign.center,
                ),
                Text(
                  "26/08/2024",
                  style: AppStyles.style14W300,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40.h),
                const CustomProfileData(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
