import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/features/home/presentation/widgets/custom_text_in_home.dart';
import 'package:shopping_chart/features/home/presentation/widgets/home_carousel_slider.dart';
import 'package:shopping_chart/features/home/presentation/widgets/social_media_card.dart';
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
        elevation: 0,
        actions: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  Assets.imagesJewel,
                ),
              ),
              Text(
                "400",
                style: AppStyles.style12W700.copyWith(
                  fontWeight: FontWeight.w900,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  Assets.imagesWallet,
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
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
    );
  }
}
