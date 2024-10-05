import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class PurchaseCompletedSuccessfully extends StatefulWidget {
  const PurchaseCompletedSuccessfully({super.key});

  @override
  State<PurchaseCompletedSuccessfully> createState() =>
      _PurchaseCompletedSuccessfullyState();
}

class _PurchaseCompletedSuccessfullyState
    extends State<PurchaseCompletedSuccessfully>
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
    _animation = Tween<double>(begin: -350, end: 0).animate(
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
    final isDark = Theme.of(context).brightness == Brightness.dark;
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
                    "donePurchase".tr(context: context),
                    style: AppStyles.style22W600,
                  ),
                  SizedBox(height: 25.h),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(
                      top: 24.h,
                      left: 20.w,
                      right: 20.w,
                      bottom: 15.h,
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 25.w),
                    decoration: BoxDecoration(
                      color: isDark ? null : AppColors.blueLight,
                      borderRadius: BorderRadius.circular(16.r),
                      gradient: isDark
                          ? LinearGradient(
                              colors: [
                                const Color(0xff7B7B7B),
                                const Color(0xff0F0F0F).withOpacity(0.65),
                              ],
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                            )
                          : null,
                    ),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "purchaseInfo".tr(context: context),
                                  style: AppStyles.style14W600,
                                ),
                                Text(
                                  "40 ${"sar".tr(context: context)}",
                                  style: AppStyles.style14W600,
                                ),
                              ],
                            ),
                            SizedBox(height: 20.h),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '  • 40 ${"a_diamed".tr(context: context)}',
                                      style: AppStyles.style14W400.copyWith(
                                        color: isDark
                                            ? Colors.white
                                            : Colors.white,
                                      ),
                                    ),
                                    SvgPicture.asset(
                                      Assets.imagesJewelInDiamondWallet,
                                      height: 61.h,
                                    ),
                                  ],
                                ),
                              ],
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
