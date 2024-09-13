import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/core/utils/assets.dart';
import 'package:shopping_chart/features/subscribe_package/presentation/widgets/custom_payment_method_item.dart';

class PaymentGatewayViewBody extends StatelessWidget {
  const PaymentGatewayViewBody({super.key});

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
      child: ListView(
        children: [
          SizedBox(height: 50.h),
          CustomPaymentMethodItem(
            title: "Visa / Master Card",
            icon: Assets.imagesWalletLine,
            onTap: () {},
          ),
          SizedBox(height: 15.h),
          CustomPaymentMethodItem(
            title: "Apple Pay",
            icon: Assets.imagesApplePay,
            onTap: () {},
          ),
          SizedBox(height: 26.h),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: AppColors.navBarColor,
                ),
                child: TextButton.icon(
                  onPressed: () {},
                  label: Text(
                    "رابط الدفع السريع",
                    style: AppStyles.style14W400,
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
                      hintText: "أدخل كود الخصم",
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
                      color: AppColors.navBarColor,
                    ),
                    child: Center(
                      child: Text(
                        "تطبيق",
                        style: AppStyles.style14W400,
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
