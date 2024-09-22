import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class SuccessSubscribedView extends StatefulWidget {
  const SuccessSubscribedView({super.key});

  @override
  State<SuccessSubscribedView> createState() => _SuccessSubscribedViewState();
}

class _SuccessSubscribedViewState extends State<SuccessSubscribedView>
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
                    " تم اشتراك فى الباقة بنجاح",
                    style: AppStyles.style22W600,
                  ),
                  SizedBox(height: 25.h),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(24),
                    margin: EdgeInsets.symmetric(horizontal: 28.w),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                          Assets.imagesPackageSubscribed,
                        ),
                        alignment: Alignment(-1.0, -0.6),
                        scale: 3.5,
                      ),
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "مزايا الباقة",
                              style: AppStyles.style14W600,
                            ),
                            Text(
                              "30 ريال سعودى",
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
                                '• 15 مكالمة مجانية',
                                style: AppStyles.style14W400.copyWith(
                                  color: AppColors.whiteColor,
                                ),
                              ),
                              Text(
                                '• شعار واتساب متاح لمدة 4 أسابيع',
                                style: AppStyles.style14W400.copyWith(
                                  color: AppColors.whiteColor,
                                ),
                              ),
                              Text(
                                '• شعار الانستجرام متاح لمدة 4 أسابيع',
                                style: AppStyles.style14W400.copyWith(
                                  color: AppColors.whiteColor,
                                ),
                              ),
                              Text(
                                '• شعار X متاح لمدة  4 أسابيع',
                                style: AppStyles.style14W400.copyWith(
                                  color: AppColors.whiteColor,
                                ),
                              ),
                              Text(
                                '• شعار الانستجرام متاح لمدة 4 أسابيع',
                                style: AppStyles.style14W400.copyWith(
                                  color: AppColors.whiteColor,
                                ),
                              ),
                              Text(
                                '• شعار فيس بوك متاح لمدة 4 أسابيع',
                                style: AppStyles.style14W400.copyWith(
                                  color: AppColors.whiteColor,
                                ),
                              ),
                              Text(
                                '• شعار تيك توك متاح لمدة 4 أسابيع',
                                style: AppStyles.style14W400.copyWith(
                                  color: AppColors.whiteColor,
                                ),
                              ),
                              Text(
                                '• شعار رسائل نصية متاح لمدة 4 أسابيع',
                                style: AppStyles.style14W400.copyWith(
                                  color: AppColors.whiteColor,
                                ),
                              ),
                              Text(
                                '• شعار الإيميلات متاح لمدة 4 أسابيع',
                                style: AppStyles.style14W400.copyWith(
                                  color: AppColors.whiteColor,
                                ),
                              ),
                            ],
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
      ),
    );
  }
}
