import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/assets.dart';
import 'package:shopping_chart/features/home/presentation/widgets/custom_text_in_home.dart';
import 'package:shopping_chart/features/home/presentation/widgets/social_media_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
                icon: SvgPicture.asset(AppAssets.jewel),
                onPressed: () {},
              ),
              const Text(
                "400",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w900,
                ),
              ),
              IconButton(
                icon: SvgPicture.asset(AppAssets.wallet),
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
                    height: 250.0,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    viewportFraction: 1.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentSlide = index;
                      });
                    },
                  ),
                  items: [AppAssets.coffee, AppAssets.coffee, AppAssets.coffee].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Image.asset(i, fit: BoxFit.fill),
                        );
                      },
                    );
                  }).toList(),
                ),
                Positioned(
                  bottom: 10,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: AnimatedSmoothIndicator(
                      activeIndex: _currentSlide,
                      count: 3,
                      effect: const ExpandingDotsEffect(
                        activeDotColor: Colors.white,
                        dotColor: Colors.white54,
                        dotHeight: 10,
                        dotWidth: 10,
                        expansionFactor: 2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          const  CustomTextInHome(),
            const SocialMediaCard(imagePath: AppAssets.whatsApp, label: 'WHATSAPP',),
            const SocialMediaCard(imagePath: AppAssets.telegram,label: 'TELEGRAM',),
            const SocialMediaCard(imagePath: AppAssets.instagram, label: 'INSTAGRAM',),
          ],
        ),
      ),
    );
  }
}
