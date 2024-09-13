import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      appBar: AppBar(
        backgroundColor: AppColors.darkGray,
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          children: [
            SvgPicture.asset(
              Assets.imagesWallet,
            ),
            SizedBox(width: 10.w),
            Text(
              "400",
              style: AppStyles.style12W700.copyWith(
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(width: 10.w),
            SvgPicture.asset(
              Assets.imagesJewel,
            ),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              Assets.imagesHomeBackground,
            ),
            opacity: 0.45,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HomeCarouselSlider(),
              SizedBox(height: 48.h),
              const CustomTextInHome(),
              SizedBox(height: 38.h),
              SocialMediaCard(
                onTap: () {},
                imagePath: Assets.imagesWhatsAppImage,
                label: 'WHATSAPP',
              ),
              SizedBox(height: 50.h),
              SocialMediaCard(
                onTap: () {},
                imagePath: Assets.imagesTelegramImage,
                label: 'TELEGRAM',
              ),
              SizedBox(height: 50.h),
              SocialMediaCard(
                onTap: () {},
                imagePath: Assets.imagesInstagramNewGradientLogoAnimation,
                label: 'INSTAGRAM',
              ),
              SizedBox(height: 25.h),
            ],
          ),
        ),
      ),
    );
  }
}
