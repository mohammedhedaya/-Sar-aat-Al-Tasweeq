import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/core/utils/assets.dart';

class LaunchAdChatsViewBody extends StatelessWidget {
  const LaunchAdChatsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 13.w),
        child: Column(
          children: [
            SizedBox(height: 19.h),
            Center(
              child: Image.asset(
                Assets.imagesChatslogo,
              ),
            ),
            SizedBox(height: 30.h),
            Column(
              children: List.generate(
                5,
                (index) => Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 35.h),
                      child: ListTile(
                        onTap: () {},
                        tileColor: const Color(0xffA1A1A1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        title: Text(
                          "أحمد على محمد",
                          style: AppStyles.style14W800.copyWith(
                            color: AppColors.navBarColor,
                          ),
                        ),
                        subtitle: Text(
                          "السلام عليكم أخبارك طيب؟",
                          style: AppStyles.style14W800.copyWith(
                            fontSize: 11.sp,
                            color: const Color(0xff5E5E5E),
                          ),
                        ),
                        leading: CircleAvatar(
                          radius: 28.r,
                          backgroundImage:
                              const AssetImage(Assets.imagesImageInProfile),
                        ),
                        trailing: InkWell(
                          onTap: () {},
                          child: SvgPicture.asset(
                            Assets.imagesDeleteicon,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: -15,
                      right: -6,
                      child: CircleAvatar(
                        radius: 15.r,
                        backgroundColor: const Color(0xffE21D1D),
                        child: Text(
                          '12',
                          style: AppStyles.style12W700.copyWith(
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
