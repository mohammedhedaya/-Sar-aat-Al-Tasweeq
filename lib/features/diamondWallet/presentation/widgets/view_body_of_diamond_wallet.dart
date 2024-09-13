import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class ViewBodyOfDiamondWallet extends StatelessWidget {
  const ViewBodyOfDiamondWallet({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> diamondData = [
      {'price': '40 ماسة', 'diamonds': '40 ر.س'},
      {'price': '80 ماسة', 'diamonds': '80 ر.س'},
      {'price': '100 ماسة', 'diamonds': '100 ر.س'},
      {'price': '150 ماسة', 'diamonds': '150 ر.س'},
      {'price': '200 ماسة', 'diamonds': '200 ر.س'},
    ];

    return Stack(
      children: [
        // Background Image
        Container(
          alignment: Alignment.topCenter,
          child: Opacity(
            opacity: 0.90,
            child: SvgPicture.asset(
              Assets.jewelDiamondWallet,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 65.w,
                      height: 65.h,
                      child: SvgPicture.asset(
                        Assets.jewelDiamondWalletTop,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'المحفظة الماسية',
                      style: AppStyles.style20W600,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                  ),
                  color: Color(0xff080D12),
                ),
                child: ListView.builder(
                  itemCount: diamondData.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push('/purchaseProcess');
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            color: AppColors.whiteColor,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                // color: AppColors.blackColor,
                                Assets.imagesJewel,
                                height: 17.h,
                                width: 21.w,
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                diamondData[index]['price'],
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: Colors.black,
                                ),
                              ),
                              const Spacer(),
                              Text(
                                diamondData[index]['diamonds'],
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
