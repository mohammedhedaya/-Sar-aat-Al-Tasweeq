import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class ViewBodyOfDiamondWallet extends StatefulWidget {
  const ViewBodyOfDiamondWallet({super.key});

  @override
  State<ViewBodyOfDiamondWallet> createState() =>
      _ViewBodyOfDiamondWalletState();
}

class _ViewBodyOfDiamondWalletState extends State<ViewBodyOfDiamondWallet> {
  // SAR to USD conversion rate (example: 1 SAR = 0.27 USD)
  final double sarToUsdRate = 0.27;

  // A state variable to track whether the price is shown in SAR or USD
  bool isSar = true;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final List<Map<String, dynamic>> diamondData = [
      {'price': 40, 'diamonds': '40 ${"a_diamed".tr(context: context)}'},
      {'price': 80, 'diamonds': '80 ${"a_diamed".tr(context: context)}'},
      {'price': 100, 'diamonds': '100 ${"a_diamed".tr(context: context)}'},
      {'price': 150, 'diamonds': '150 ${"a_diamed".tr(context: context)}'},
      {'price': 200, 'diamonds': '200 ${"a_diamed".tr(context: context)}'},
      {'price': 300, 'diamonds': '300 ${"a_diamed".tr(context: context)}'},
      {'price': 500, 'diamonds': '500 ${"a_diamed".tr(context: context)}'},
      {'price': 1000, 'diamonds': '1000 ${"a_diamed".tr(context: context)}'},
      {'price': 2000, 'diamonds': '2000 ${"a_diamed".tr(context: context)}'},
    ];

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: isDark
              ? const AssetImage(
                  Assets.imagesBgdiamond,
                )
              : const AssetImage(
                  Assets.imagesBGDiamondLight,
                ),
          alignment: Alignment.topCenter,
          // scale: 3.5,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 30.h),
          Align(
            child: Column(
              children: [
                isDark
                    ? SvgPicture.asset(
                        Assets.imagesJewelnTopScreen,
                        fit: BoxFit.cover,
                      )
                    : SvgPicture.asset(
                        Assets.imagesJewelintopscreenlight,
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
                              diamondData[index]['diamonds'],
                              style: AppStyles.style16W600,
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      isSar = !isSar;
                                    });
                                  },
                                  child: Container(
                                    height: 32.h,
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: isSar
                                          ? const Color(0xff114F80)
                                          : const Color(0xffD9D9D9),
                                      borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(3),
                                        bottomRight: Radius.circular(3),
                                      ),
                                    ),
                                    child: Text(
                                      '${diamondData[index]['price']} ${"sar".tr(context: context)}',
                                      style: TextStyle(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      isSar = !isSar;
                                    });
                                  },
                                  child: Container(
                                    height: 32.h,
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: !isSar
                                          ? const Color(0xff114F80)
                                          : const Color(0xffD9D9D9),
                                      borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(3),
                                        bottomRight: Radius.circular(3),
                                      ),
                                    ),
                                    child: Text(
                                      '${(diamondData[index]['price'] * sarToUsdRate).toStringAsFixed(2)}${r"$".tr(context: context)}',
                                      style: TextStyle(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // GestureDetector(
                            //   onTap: () {
                            //     setState(() {
                            //       // Toggle between SAR and USD
                            //       isSar = !isSar;
                            //     });
                            //   },
                            //   child: Text(
                            //     isSar
                            //         ? '${diamondData[index]['price']} ${"sar".tr(context: context)}'
                            //         : '${(diamondData[index]['price'] * sarToUsdRate).toStringAsFixed(2)} ${"usd".tr(context: context)}',
                            //     style: AppStyles.style16W600,
                            //   ),
                            // ),
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
