import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import '../../../subscribe_package/presentation/widgets/custom_payment_method_item.dart';

class DiamondsPaymentGatewayViewBody extends StatelessWidget {
  const DiamondsPaymentGatewayViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.w),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            Assets.imagesHomeBackground,
          ),
          opacity: 0.26,
        ),
      ),
      child: ListView(
        children: [
          SizedBox(height: 50.h),
          CustomPaymentMethodItem(
            title: "Visa / Master Card".tr(context: context),
            icon: Assets.imagesWalletLine,
            onTap: () {
              context.push("/myCardViewDiamondWallet");
            },
          ),
          SizedBox(height: 15.h),
          CustomPaymentMethodItem(
            title: "apple_Pay".tr(context: context),
            icon: Assets.imagesApplePay,
            onTap: () {},
          ),
          SizedBox(height: 26.h),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: isDark ? AppColors.navBarColor : AppColors.blueLight,
                ),
                child: TextButton.icon(
                  onPressed: () {},
                  label: Text(
                    "fast_payment_link".tr(context: context),
                    style: AppStyles.style14W400.copyWith(
                      color:
                          isDark ? AppColors.whiteColor : AppColors.whiteColor,
                    ),
                  ),
                  icon: const Icon(
                    Icons.ios_share_sharp,
                    color: Colors.white,
                  ),
                ),
              ),
              const Expanded(
                flex: 1,
                child: SizedBox(),
              ),
            ],
          ),
          SizedBox(height: 26.h),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: SizedBox(
                  height: 50.h,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "insert_discount_code".tr(context: context),
                      hintStyle: AppStyles.style14W400.copyWith(
                        color: const Color(0XFF828087),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 13.w),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color:
                          isDark ? AppColors.navBarColor : AppColors.blueLight,
                    ),
                    child: Center(
                      child: Text(
                        "apply".tr(context: context),
                        style: AppStyles.style14W400.copyWith(
                          color: isDark
                              ? AppColors.whiteColor
                              : AppColors.whiteColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
