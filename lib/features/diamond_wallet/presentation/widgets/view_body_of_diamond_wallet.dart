import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
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
      {'price': '300 ماسة', 'diamonds': '300 ر.س'},
      {'price': '500 ماسة', 'diamonds': '500 ر.س'},
      {'price': '1000 ماسة', 'diamonds': '1000 ر.س'},
      {'price': '2000 ماسة', 'diamonds': '2000 ر.س'},
    ];
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            Assets.imagesBgdiamond,
          ),
          alignment: Alignment.topCenter,
          scale: 3.5,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 30.h),
          Align(
            child: Column(
              children: [
                SvgPicture.asset(
                  Assets.imagesJewelnTopScreen,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 20.h),
                Text(
                  'المحفظة الماسية',
                  style: AppStyles.style20W600,
                ),
              ],
            ),
          ),
          SizedBox(height: 40.h),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                top: 100.h,
                right: 13.w,
                left: 13.w,
                bottom: 13.h,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(70.r),
                  topLeft: Radius.circular(70.r),
                ),
                color: const Color(0xff080D12).withOpacity(0.80),
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: diamondData.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push('/purchaseProcess');
                    },
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 20.h),
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          color: const Color(0xffFBFBFB),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              Assets.imagesJewel,
                              colorFilter: const ColorFilter.mode(
                                AppColors.blackColor,
                                BlendMode.srcIn,
                              ),
                            ),
                            SizedBox(width: 6.w),
                            Text(
                              diamondData[index]['price'],
                              style: AppStyles.style16W600,
                            ),
                            const Spacer(),
                            Text(
                              diamondData[index]['diamonds'],
                              style: AppStyles.style16W600,
                            ),
                            SizedBox(width: 10.w),
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
    );
  }
}
