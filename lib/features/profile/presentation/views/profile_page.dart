import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import '../widgets/custom_item_include_names_and_phone.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              Assets.imagesHomeBackground,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 100.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(Assets.imagesImageInProfile),
                    ),
                    SizedBox(width: 40.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "فيصل, عبدالعزيز",
                          style: AppStyles.style25W400,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                CircularPercentIndicator(
                  radius: 50.0,
                  lineWidth: 10.0,
                  percent: 0.6,
                  center: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("6 يوم", style: AppStyles.style14W800),
                      Text("متبقي", style: AppStyles.style14W300),
                    ],
                  ),
                  progressColor: AppColors.whiteColor,
                ),
                SizedBox(height: 20.h),
                Text(
                  "   تنتهي في \n26/08/2024",
                  style: AppStyles.style14W800,
                ),
                SizedBox(height: 40.h),
                const CustomItemIncludeNames(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
