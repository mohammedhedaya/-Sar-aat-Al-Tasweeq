import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/assets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeCarouselSlider extends StatefulWidget {
  const HomeCarouselSlider({super.key});

  @override
  State<HomeCarouselSlider> createState() => _HomeCarouselSliderState();
}

class _HomeCarouselSliderState extends State<HomeCarouselSlider> {
  int _currentSlide = 0;

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 200.h,
            enlargeCenterPage: true,
            autoPlay: true,
            enableInfiniteScroll: true,
            viewportFraction: 1.1,
            onPageChanged: (index, reason) {
              setState(() {
                _currentSlide = index;
              });
            },
          ),
          items: [
            Assets.imagesCoffee,
            Assets.imagesCoffee,
            Assets.imagesCoffee,
          ].map(
            (i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.w),
                    child: Image.asset(i, fit: BoxFit.fill),
                  );
                },
              );
            },
          ).toList(),
        ),
        Positioned(
          bottom: 15.h,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 7.h),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.44),
              borderRadius: BorderRadius.circular(50.r),
            ),
            child: AnimatedSmoothIndicator(
              activeIndex: _currentSlide,
              count: 3,
              effect: SlideEffect(
                activeDotColor:
                    isDark ? AppColors.darkGray : AppColors.blueLight,
                dotHeight: 14,
                dotWidth: 14,
                dotColor: isDark ? AppColors.whiteColor : AppColors.yellowLight,
                paintStyle: PaintingStyle.fill,
                type: SlideType.normal,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
