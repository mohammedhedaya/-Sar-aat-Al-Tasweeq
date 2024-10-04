import 'package:easy_localization/easy_localization.dart';
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
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final List<Map<String, dynamic>> diamondData = [
      {
        'price': '40 ${"a_diamed".tr(context: context)}',
        'diamonds': '40 ${"sar".tr(context: context)}'
      },
      {
        'price': '80 ${"a_diamed".tr(context: context)}',
        'diamonds': '80 ${"sar".tr(context: context)}'
      },
      {
        'price': '100 ${"a_diamed".tr(context: context)}',
        'diamonds': '100 ${"sar".tr(context: context)}'
      },
      {
        'price': '150 ${"a_diamed".tr(context: context)}',
        'diamonds': '150 ${"sar".tr(context: context)}'
      },
      {
        'price': '200 ${"a_diamed".tr(context: context)}',
        'diamonds': '200 ${"sar".tr(context: context)}'
      },
      {
        'price': '300 ${"a_diamed".tr(context: context)}',
        'diamonds': '300 ${"sar".tr(context: context)}'
      },
      {
        'price': '500 ${"a_diamed".tr(context: context)}',
        'diamonds': '500 ${"sar".tr(context: context)}'
      },
      {
        'price': '1000 ${"a_diamed".tr(context: context)}',
        'diamonds': '1000 ${"sar".tr(context: context)}'
      },
      {
        'price': '2000 ${"a_diamed".tr(context: context)}',
        'diamonds': '2000 ${"sar".tr(context: context)}'
      },
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
                  "diamond_wallet".tr(context: context),
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
                color: isDark
                    ? const Color(0xff080D12).withOpacity(0.80)
                    : AppColors.blueLight,
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
                              colorFilter: ColorFilter.mode(
                                isDark ? AppColors.blackColor : AppColors.gray,
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
