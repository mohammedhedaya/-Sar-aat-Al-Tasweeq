import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/core/utils/assets.dart';
import 'package:shopping_chart/features/whatsapp/presentation/widgets/custom_show_dialog.dart';
import 'package:shopping_chart/features/whatsapp/presentation/widgets/custom_subscribe_btn.dart';

class WhatsappViewBody extends StatelessWidget {
  const WhatsappViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              Center(
                child: SvgPicture.asset(
                  Assets.imagesWhatsapplogo,
                ),
              ),
              Text(
                "Whatsapp",
                style: AppStyles.style78W400,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(
              left: 41.w,
              right: 31.w,
              top: 80.h,
              bottom: 25.h,
            ),
            decoration: BoxDecoration(
              color: const Color(0xff080d12).withOpacity(0.80),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(70.r),
                topRight: Radius.circular(70.r),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSubscribeBtn(
                  onPressed: () {
                    showDialog(
                      context: context,
                      barrierColor: const Color(0xffFFF9F9).withOpacity(0.33),
                      builder: (context) {
                        return CustomShowDialog(
                          onTap: () {
                            context.push('/launchYourAdView');
                          },
                          image: Assets.imagesXerror,
                          textButton: "الأشتراك",
                          content: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "الرجاء الأشتراك فى الباقة",
                                style: AppStyles.style15W900,
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(width: 10.w),
                              SvgPicture.asset(
                                Assets.imagesSubscribeOfPackage,
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  text: "إضافة رقم الواتساب",
                ),
                SizedBox(height: 50.h),
                CustomSubscribeBtn(
                  onPressed: () {
                    context.push('/scanQrCodeView');
                  },
                  text: "مسح الباركود",
                ),
                SizedBox(height: 39.h),
                Text(
                  "شاهد طريقة أستخدام الواتساب ؟",
                  style: AppStyles.style14W600,
                ),
                SizedBox(height: 10.h),
                Image.asset(
                  Assets.imagesImageSea,
                ),
                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "نسمعك بوضوح",
                      style: AppStyles.style14W600,
                    ),
                    SizedBox(width: 5.w),
                    SvgPicture.asset(
                      Assets.imagesLikeicon,
                      height: 40.h,
                    ),
                  ],
                ),
                Text(
                  "نساعدك فى بناء تجربتك مع سرعه التسويق",
                  style: AppStyles.style12W600,
                ),
                SizedBox(height: 16.h),
                InkWell(
                  onTap: () {
                    context.push('/whatsappAddSuggestionView');
                  },
                  child: Center(
                    child: Container(
                      height: 31.h,
                      width: 119.w,
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
                          "الأقتراحات",
                          style: AppStyles.style14W700,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
