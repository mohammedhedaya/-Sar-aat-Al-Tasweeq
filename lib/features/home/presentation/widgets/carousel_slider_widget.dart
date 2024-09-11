import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/features/home/presentation/widgets/custom_text_in_home.dart';
import 'package:shopping_chart/features/home/presentation/widgets/social_media_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class CarouselSliderWidget extends StatefulWidget {
  const CarouselSliderWidget({super.key});

  @override
  _CarouselSliderWidgetState createState() => _CarouselSliderWidgetState();
}

class _CarouselSliderWidgetState extends State<CarouselSliderWidget> {
  int _currentSlide = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkGray,
      appBar: AppBar(
        backgroundColor: AppColors.darkGray,
        elevation: 0,
        actions: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
              ),
              IconButton(
                icon: SvgPicture.asset(Assets.jewel, height: 24.h, width: 24.w),
                onPressed: () {},
              ),
              Text(
                "400",
                style: AppStyles.style12W700.copyWith(fontSize: 12.sp),
              ),
              IconButton(
                icon: SvgPicture.asset(Assets.wallet, height: 24.h, width: 24.w),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: 250.h,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    viewportFraction: 1.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentSlide = index;
                      });
                    },
                  ),
                  items: [Assets.coffee, Assets.coffee, Assets.coffee].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.w),
                          child: Image.asset(i, fit: BoxFit.fill),
                        );
                      },
                    );
                  }).toList(),
                ),
                Positioned(
                  bottom: 10.h,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: AnimatedSmoothIndicator(
                      activeIndex: _currentSlide,
                      count: 3,
                      effect: ExpandingDotsEffect(
                        activeDotColor: Colors.white,
                        dotColor: Colors.white54,
                        dotHeight: 10.h,
                        dotWidth: 10.w,
                        expansionFactor: 2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const CustomTextInHome(),
            const SocialMediaCard(imagePath: Assets.whatsApp, label: 'WHATSAPP'),
            const SocialMediaCard(imagePath: Assets.telegram, label: 'TELEGRAM'),
            const SocialMediaCard(imagePath: Assets.instagram, label: 'INSTAGRAM'),
          ],
        ),
      ),
    );
  }
}
