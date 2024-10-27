import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import 'home_carousel_slider.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              Assets.imagesHomeBackground,
            ),
            opacity: 0.45,
          ),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: isDark ? AppColors.navBarColor : AppColors.blueLight,
              padding: EdgeInsetsDirectional.only(start: 10.w, bottom: 4.h),
              child: Row(
                children: [
                  SvgPicture.asset(
                    Assets.imagesWallet,
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    "400",
                    style: AppStyles.style12W700.copyWith(
                      fontWeight: FontWeight.w900,
                      fontFamily: "Titillium Web",
                      color: isDark ? null : AppColors.whiteColor,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  SvgPicture.asset(
                    Assets.imagesJewel,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            const HomeCarouselSlider(),
            SizedBox(height: 20.h),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 10.h),
                    InkWell(
                      onTap: () {
                        context.push('/whatsappView');
                      },
                      child: Image.asset(
                        Assets.imagesWhatsappLogo,
                        height: 150.h,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    InkWell(
                      onTap: () {
                        context.push('/telegramView');
                      },
                      child: Image.asset(
                        Assets.imagesTelegramLogo,
                        height: 150.h,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    InkWell(
                      onTap: () {
                        context.push('/instagramView');
                      },
                      child: Image.asset(
                        Assets.imagesInstagramLogo,
                        height: 150.h,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    InkWell(
                      onTap: () {
                        context.push('/tiktokView');
                      },
                      child: Image.asset(
                        Assets.imagesTiktokLogo,
                        height: 150.h,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    InkWell(
                      onTap: () {
                        context.push('/xView');
                      },
                      child: Image.asset(
                        Assets.imagesXLogo,
                        height: 150.h,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    InkWell(
                      onTap: () {
                        context.push('/facebookView');
                      },
                      child: Image.asset(
                        Assets.imagesFacebookLogoo,
                        height: 150.h,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    InkWell(
                      onTap: () {
                        context.push('/smsView');
                      },
                      child: Image.asset(
                        Assets.imagesSMSLogo,
                        height: 150.h,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    InkWell(
                      onTap: () {
                        context.push('/emailView');
                      },
                      child: Image.asset(
                        Assets.imagesEmailLogoo,
                        height: 150.h,
                      ),
                    ),
                    SizedBox(height: 30.h),
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
