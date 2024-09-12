import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_chart/features/profile/presentation/widgets/custom_include_email.dart';
import 'package:shopping_chart/features/profile/presentation/widgets/custom_subscription_date_and_buttom.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../auth/presentation/widgets/auth_text_field.dart';
import 'custom_item_include_country.dart';

class CustomItemIncludeNames extends StatelessWidget {
  const CustomItemIncludeNames({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "الاسم الأول",
                          style: AppStyles.style12W400.copyWith(color: AppColors.whiteColor, fontSize: 12),
                          textAlign: TextAlign.right,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 60.h,
                          decoration: const BoxDecoration(
                            color: AppColors.dimGray,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Center(
                            child: Text(
                              'فيصل',
                              style: AppStyles.style18W400,
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 6.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "الاسم الثاني",
                          style: AppStyles.style12W400.copyWith(color: AppColors.whiteColor, fontSize: 12),
                          textAlign: TextAlign.right,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 60.h,
                          decoration: const BoxDecoration(
                            color: AppColors.dimGray,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Center(
                            child: Text(
                              'عبدالعزيز',
                              style: AppStyles.style18W400,
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "الاسم الثالث",
                          style: AppStyles.style12W400.copyWith(color: AppColors.whiteColor, fontSize: 12),
                          textAlign: TextAlign.right,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 60.h,
                          decoration: const BoxDecoration(
                            color: AppColors.dimGray,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Center(
                            child: Text(
                              'آل سعود',
                              style: AppStyles.style18W400,
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
            SizedBox(height: 30.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "رقم الهاتف",
                    style: AppStyles.style12W400.copyWith(color: AppColors.whiteColor, fontSize: 12),
                    textAlign: TextAlign.right,
                  ),
                ),
                CustomAuthTextField(
                  hintText: "رقم الهاتف",
                  keyboardType: TextInputType.phone,
                  suffixIcon: InkWell(
                    onTap: () {},
                    child: Container(
                      constraints: BoxConstraints(
                        minWidth: 95.w,
                      ),
                      width: 95.w,
                      height: 70.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "966",
                            style: AppStyles.style16W400.copyWith(color: AppColors.whiteColor),
                          ),
                          SizedBox(width: 5.w),
                          const Icon(
                            Icons.keyboard_arrow_down,
                            color: AppColors.whiteColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.h),
            CustomItemIncludeCountry(),
            SizedBox(height: 30.h),
            CustomIncludeEmail(),
            SizedBox(height: 15.h),
            CustomSubscriptionDate(),
          ],
        ),
      ),
    );
  }
}
