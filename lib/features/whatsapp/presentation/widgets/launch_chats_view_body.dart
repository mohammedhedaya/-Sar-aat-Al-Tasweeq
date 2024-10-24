import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class LaunchAdChatsViewBody extends StatelessWidget {
  const LaunchAdChatsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 13.w),
        child: Column(
          children: [
            SizedBox(height: 19.h),
            Center(
              child: isDark
                  ? Image.asset(
                      Assets.imagesChatslogo,
                    )
                  : Image.asset(
                      Assets.imagesChatsLogoLight,
                    ),
            ),
            SizedBox(height: 30.h),
            Column(
              children: List.generate(
                7,
                (index) => Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 35.h),
                      child: ListTile(
                        onTap: () {
                          context.push("/launchChatsMessagesView");
                        },
                        tileColor: isDark
                            ? const Color(0xffA1A1A1)
                            : AppColors.blueLight,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        title: Text(
                          "أحمد على محمد",
                          style: AppStyles.style14W800.copyWith(
                            color: isDark
                                ? AppColors.navBarColor
                                : AppColors.whiteColor,
                          ),
                        ),
                        subtitle: Text(
                          "السلام عليكم أخبارك طيب؟",
                          style: AppStyles.style14W800.copyWith(
                            fontSize: 11.sp,
                            color: isDark
                                ? const Color(0xff5E5E5E)
                                : const Color(0xffBDBDBD),
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
