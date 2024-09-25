import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import 'home_carousel_slider.dart';
import 'social_media_card.dart';

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
              color: isDark ? AppColors.navBarColor : null,
              padding: EdgeInsetsDirectional.only(start: 10.w, bottom: 10.h),
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
                    ),
                  ),
                  SizedBox(width: 10.w),
                  SvgPicture.asset(
                    Assets.imagesJewel,
                  ),
                ],
              ),
            ),
            const HomeCarouselSlider(),
            // SizedBox(height: 48.h),
            // const CustomTextInHome(),
            SizedBox(height: 20.h),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SocialMediaCard(
                      onTap: () {
                        context.push('/whatsappView');
                      },
                      imagePath: Assets.imagesWhatsAppImage,
                      label: 'WHATSAPP',
                    ),
                    SizedBox(height: 30.h),
                    SocialMediaCard(
                      onTap: () {
                        context.push('/telegramView');
                      },
                      imagePath: Assets.imagesTelegramImage,
                      label: 'TELEGRAM',
                    ),
                    SizedBox(height: 30.h),
                    SocialMediaCard(
                      onTap: () {
                        context.push('/instagramView');
                      },
                      imagePath: Assets.imagesInstagramNewGradientLogoAnimation,
                      label: 'INSTAGRAM',
                    ),
                    SizedBox(height: 30.h),
                    SocialMediaCard(
                      onTap: () {
                        context.push('/xView');
                      },
                      imagePath: Assets.imagesXtwitter,
                      label: 'X',
                    ),
                    SizedBox(height: 30.h),
                    SocialMediaCard(
                      onTap: () {
                        context.push('/facebookView');
                      },
                      imagePath: Assets.imagesFacebookLogo,
                      label: 'FACEBOOK',
                    ),
                    SizedBox(height: 30.h),
                    SocialMediaCard(
                      onTap: () {
                        context.push('/smsView');
                      },
                      imagePath: Assets.imagesSmsLogo,
                      label: 'SMS',
                    ),
                    SizedBox(height: 30.h),
                    SocialMediaCard(
                      onTap: () {
                        context.push('/emailView');
                      },
                      imagePath: Assets.imagesEmailLogo,
                      label: 'E-mail',
                    ),
                    SizedBox(height: 25.h),
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
