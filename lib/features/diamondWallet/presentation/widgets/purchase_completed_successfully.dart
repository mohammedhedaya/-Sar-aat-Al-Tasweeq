import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/core/utils/assets.dart';

class PurchaseCompletedSuccessfully extends StatefulWidget {
  const PurchaseCompletedSuccessfully({super.key});

  @override
  State<PurchaseCompletedSuccessfully> createState() => _PurchaseCompletedSuccessfullyState();
}

class _PurchaseCompletedSuccessfullyState extends State<PurchaseCompletedSuccessfully>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _animation = Tween<double>(begin: -200, end: 0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                Assets.imagesHomeBackground,
              ),
              alignment: Alignment.bottomCenter,
              opacity: 0.26,
            ),
          ),
          child: Stack(
            children: [
              AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Positioned(
                    top: _animation.value,
                    left: 0,
                    right: 0,
                    child: child!,
                  );
                },
                child: Image.asset(
                  Assets.imagesCelebration,
                ),
              ),
              Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                  Text(
                    "تم الشراء بنجاح",
                    style: AppStyles.style22W600,
                  ),
                  SizedBox(height: 25.h),
                  Container(
                    width: double.infinity,

                    padding: const EdgeInsets.all(40),
                    margin: EdgeInsets.symmetric(horizontal: 25.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xff7B7B7B),
                          const Color(0xff0F0F0F).withOpacity(0.65),
                        ],
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                      ),
                    ),
                    child: Stack(alignment: Alignment.topLeft,
                      children: [
                        SvgPicture.asset(
                          Assets.jewelDiamondWallet,height: MediaQuery.of(context).size.height * 0.1, // SVG asset
                          width: MediaQuery.of(context).size.width * 0.2, // Scale as needed
                        ),
                        // Purchase Information
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "معلومات الشراء",
                                  style: AppStyles.style14W600,
                                ),
                                Text(
                                  "40 ريال سعودى",
                                  style: AppStyles.style14W600,
                                ),
                              ],
                            ),
                            SizedBox(height: 20.h),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '• 40 ماسة',
                                    style: AppStyles.style14W400.copyWith(
                                      color: AppColors.whiteColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
