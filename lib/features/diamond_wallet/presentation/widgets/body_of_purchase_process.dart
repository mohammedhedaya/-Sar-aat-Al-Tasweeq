import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/assets.dart';

class BodyOfPurchaseProcess extends StatelessWidget {
  const BodyOfPurchaseProcess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            Assets.imagesHomeBackground,
          ),
          opacity: 0.26,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                Assets.imagesApplogo,
                width: 137.w,
                height: 188.h,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "سرعة التسويق",
                      style: AppStyles.style20W400.copyWith(
                        fontWeight: FontWeight.w200,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      "شراء ماسات داخل التطبيق\n40 ماسة",
                      style: AppStyles.style20W400.copyWith(
                        fontWeight: FontWeight.w200,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 5.h),
          InkWell(
            onTap: () {
              context.push("/diamondsPaymentGatewayView");
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 4.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xff00C0CC),
                    Color(0xff006066),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
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
        ],
      ),
    );
  }
}
