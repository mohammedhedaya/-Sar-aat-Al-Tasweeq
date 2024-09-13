import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/assets.dart';

class BodyOfPurchaseProcess extends StatelessWidget {
  const BodyOfPurchaseProcess({super.key});

  @override
  Widget build(BuildContext context) {
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              // Image
              Image.asset(
                Assets.imagesApplogo,
                width: 137.w,
                height: 188.h,
              ),
              // Text side
              Expanded(
                child: Text(
                  'سرعة التسويق\n شراء ماسات داخل التطبيق\n40 ماسة',
                  style: AppStyles.style20W400,
                ),
              ),
            ],
          ),
          SizedBox(height: 40.h),
          InkWell(
            onTap: () {
              context.push("/myCardViewDiamondWallet");
            },
            child: Center(
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 30.w, vertical: 10.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xff00C0CC),
                      Color(0xff006066),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Text(
                  "ادفع 40 ر.س",
                  style: AppStyles.style14W400.copyWith(
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
