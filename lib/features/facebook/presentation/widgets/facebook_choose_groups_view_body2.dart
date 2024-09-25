import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../whatsapp/presentation/widgets/custom_show_dialog.dart';
import '../../../whatsapp/presentation/widgets/destination_check_box.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class FacebookChooseGroupsViewBody2 extends StatelessWidget {
  const FacebookChooseGroupsViewBody2({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            Container(
              padding: EdgeInsets.only(
                top: 15.h,
                bottom: 11.h,
                left: 22.h,
                right: 22.w,
              ),
              decoration: BoxDecoration(
                color: const Color(0xff00C0CC),
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
                    '400',
                    style: AppStyles.style14W400,
                  ),
                ],
              ),
            ),
            SizedBox(height: 18.h),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "* عدد المسموح الإرسال علية 400 شخص فقط برجاء شحن المزيد من الماسات",
                style: AppStyles.style13W600.copyWith(
                  fontSize: 9.sp,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    text: "اسم المجموعة:  ",
                    style: AppStyles.style13W600,
                    children: [
                      TextSpan(
                        text: '(حراج)',
                        style: AppStyles.style13W600.copyWith(
                            color: const Color(0xffE21D1D),
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    context.push("/diamondWallet");
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
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
                    child: Center(
                      child: Text(
                        "إعادة الشحن",
                        style: AppStyles.style14W400,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "حراج",
                  style: AppStyles.style13W600,
                ),
                const ChooseDestinationCheckbox(),
              ],
            ),
            const Divider(
              color: AppColors.whiteColor,
              thickness: 1,
              endIndent: 25,
            ),
            Column(
              children: List.generate(
                5,
                (index) => Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "فيصل عبدالعزيز",
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
              onTap: () {
                showDialog(
                  context: context,
                  barrierColor: const Color(0xffFFF9F9).withOpacity(0.33),
                  builder: (context) {
                    return CustomShowDialog(
                      onTap: () {
                        context.push('/sendingChoosenGroupView');
                      },
                      image: Assets.imagesRechargeWallet,
                      textButton: "التالى",
                      content: Text(
                        "إعادة الشحن",
                        style: AppStyles.style32W700,
                        textAlign: TextAlign.center,
                      ),
                    );
                  },
                );
              },
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
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Center(
                  child: Text(
                    "إرسال",
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
