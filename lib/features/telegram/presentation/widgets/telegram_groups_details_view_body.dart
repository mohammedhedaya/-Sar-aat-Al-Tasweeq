import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/core/utils/assets.dart';
import 'package:shopping_chart/features/whatsapp/presentation/widgets/destination_check_box.dart';

class TelegramGroupsDetailsViewBody extends StatelessWidget {
  const TelegramGroupsDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                "المملكة العربية السعودية",
                style: AppStyles.style17W800,
              ),
              leading: SvgPicture.asset(
                Assets.imagesSuadiFlag,
                height: 41.h,
              ),
            ),
            SizedBox(height: 6.h),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: EdgeInsets.only(
                      top: 8.h,
                      bottom: 10.h,
                      left: 12.h,
                      right: 12.w,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          Assets.imagesSendforward,
                          colorFilter: const ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcIn,
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Expanded(
                          child: Text(
                            'أختار 300 مجموعة بشكل عشوائى',
                            style: AppStyles.style14W400,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 23.w),
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.only(
                        top: 15.h,
                        bottom: 11.h,
                        left: 22.h,
                        right: 22.w,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        border: Border.all(
                          color: Colors.white,
                          width: 1,
                        ),
                      ),
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            Assets.imagesLaunchJewel,
                          ),
                          SizedBox(height: 11.h),
                          Text(
                            '300',
                            style: AppStyles.style14W400,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 51.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "تحديد الكل(1400)",
                  style: AppStyles.style13W600,
                ),
                const ChooseDestinationCheckbox()
              ],
            ),
            SizedBox(height: 27.h),
            Column(
              children: List.generate(
                5,
                (index) => Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "جروب العائلة",
                          style: AppStyles.style13W600,
                        ),
                        const ChooseDestinationCheckbox()
                      ],
                    ),
                    Divider(
                      color: AppColors.whiteColor,
                      thickness: 1,
                      endIndent: 25.w,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 59.h),
            InkWell(
              onTap: () {},
              child: Container(
                height: 40.h,
                width: 200.w,
                padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 4.h),
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
                child: Center(
                  child: Text(
                    "قم بالإرسال",
                    style: AppStyles.style14W400,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
