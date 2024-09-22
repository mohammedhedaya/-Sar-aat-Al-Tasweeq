import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_colors.dart';
import 'custom_text_in_home.dart';
import 'home_carousel_slider.dart';
import 'social_media_card.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
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
              color: AppColors.darkGray,
              margin: EdgeInsetsDirectional.only(bottom: 10.h, start: 19.w),
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
            SizedBox(height: 48.h),
            const CustomTextInHome(),
            SizedBox(height: 10.h),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 18.h),
                    SocialMediaCard(
                      onTap: () {
                        context.push('/whatsappView');
                      },
                      imagePath: Assets.imagesWhatsAppImage,
                      label: 'WHATSAPP',
                    ),
                    SizedBox(height: 50.h),
                    SocialMediaCard(
                      onTap: () {
                        context.push('/telegramView');
                      },
                      imagePath: Assets.imagesTelegramImage,
                      label: 'TELEGRAM',
                    ),
                    SizedBox(height: 50.h),
                    SocialMediaCard(
                      onTap: () {
                        context.push('/instagramView');
                      },
                      imagePath: Assets.imagesInstagramNewGradientLogoAnimation,
                      label: 'INSTAGRAM',
                    ),
                    SizedBox(height: 50.h),
                    SocialMediaCard(
                      onTap: () {
                        context.push('/xView');
                      },
                      imagePath: Assets.imagesXtwitter,
                      label: 'X',
                    ),
                    SizedBox(height: 50.h),
                    SocialMediaCard(
                      onTap: () {
                        context.push('/facebookView');
                      },
                      imagePath: Assets.imagesFacebookLogo,
                      label: 'FACEBOOK',
                    ),
                    SizedBox(height: 50.h),
                    SocialMediaCard(
                      onTap: () {
                        context.push('/smsView');
                      },
                      imagePath: Assets.imagesSmsLogo,
                      label: 'SMS',
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
