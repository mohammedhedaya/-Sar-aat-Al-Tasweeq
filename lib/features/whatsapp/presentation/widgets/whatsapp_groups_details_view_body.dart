import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import 'custom_show_dialog.dart';

class GroupsDetailsViewBody extends StatelessWidget {
  const GroupsDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 13.w, left: 32.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      Assets.imagesWallet,
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      "300",
                      style: AppStyles.style12W700.copyWith(
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    SvgPicture.asset(
                      Assets.imagesJewel,
                    ),
                  ],
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
          ),
          const Divider(
            thickness: 1,
            color: Colors.white,
          ),
          ListTile(
            title: Text(
              "المملكة العربية السعودية",
              style: AppStyles.style17W800,
            ),
            leading: SvgPicture.asset(
              Assets.imagesSuadiFlag,
              height: 40.h,
            ),
          ),
          const Divider(
            thickness: 1,
            color: Colors.white,
          ),
          SizedBox(height: 50.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: GridView.count(
              crossAxisCount: 3,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 10.w,
              mainAxisSpacing: 10.h,
              childAspectRatio: 0.85.r,
              shrinkWrap: true,
              children: [
                for (int i = 0; i < 12; i++)
                  Container(
                    padding: EdgeInsets.only(
                      left: 14.w,
                      right: 14.w,
                      bottom: 14.h,
                      top: 19.h,
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
                        Text(
                          "جروب العائلة",
                          style: AppStyles.style13W600,
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              useSafeArea: true,
                              barrierColor:
                                  const Color(0xffFFF9F9).withOpacity(0.33),
                              builder: (context) {
                                return AlertDialog(
                                  title: Text(
                                    "رابط الجروب",
                                    style: AppStyles.style12W400.copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                  content: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.10),
                                      borderRadius: BorderRadius.circular(20.r),
                                    ),
                                    padding: const EdgeInsets.all(22),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            "https://web.whatsapp.com/",
                                            style:
                                                AppStyles.style12W400.copyWith(
                                              color: Colors.white,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        SizedBox(width: 8.w),
                                        InkWell(
                                          onTap: () {},
                                          child: SvgPicture.asset(
                                            Assets.imagesCopyIcon2,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  actions: [
                                    InkWell(
                                      onTap: () {
                                        context.pop();
                                      },
                                      child: Center(
                                        child: Container(
                                          width: double.infinity,
                                          padding: EdgeInsets.only(
                                            top: 3.h,
                                            bottom: 3.h,
                                            left: 12.h,
                                            right: 12.w,
                                          ),
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 30.w),
                                          decoration: BoxDecoration(
                                            gradient: const LinearGradient(
                                              colors: [
                                                Color(0xff00C0CC),
                                                Color(0xff006066),
                                              ],
                                              begin: Alignment.centerLeft,
                                              end: Alignment.centerRight,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(5.r),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "التالى",
                                              style: AppStyles.style14W400,
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                              vertical: 3.h,
                            ),
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
                                "إضافة",
                                style: AppStyles.style14W400,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 50.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 17.w),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      barrierColor: const Color(0xffFFF9F9).withOpacity(0.33),
                      builder: (context) {
                        return CustomShowDialog(
                          onTap: () {
                            context.pop();
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
                    padding: EdgeInsets.only(
                      top: 15.h,
                      bottom: 11.h,
                      left: 22.h,
                      right: 22.w,
                    ),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xff00C0CC),
                          Color(0xff006066),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
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
                SizedBox(width: 18.w),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(
                      top: 8.h,
                      bottom: 10.h,
                      left: 12.h,
                      right: 12.w,
                    ),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xff00C0CC),
                          Color(0xff006066),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(5.r),
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
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25.h),
        ],
      ),
    );
  }
}
