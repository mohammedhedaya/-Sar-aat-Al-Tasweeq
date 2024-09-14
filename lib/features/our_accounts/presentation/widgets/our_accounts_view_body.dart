import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class OurAccountsViewBody extends StatelessWidget {
  const OurAccountsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30.h),
        SvgPicture.asset(
          Assets.imagesMarketingspeedcalculations,
          height: MediaQuery.of(context).size.height * 0.15,
        ),
        SizedBox(height: 30.h),
        Expanded(
          flex: 3,
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 50.h, left: 15.w, right: 15.w),
            decoration: BoxDecoration(
              color: const Color(0xffABABAB),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.r),
                topRight: Radius.circular(25.r),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "حسابتنا الرسمية",
                        style: AppStyles.style20W900.copyWith(
                          color: AppColors.blackColor,
                        ),
                      ),
                      SizedBox(width: 14.w),
                      SvgPicture.asset(
                        Assets.imagesVerifyIcon,
                      ),
                    ],
                  ),
                  SizedBox(height: 38.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 116.h,
                            width: 116.w,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              Assets.imagesSnapchat,
                              height: 116.h,
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Text(
                            "Snapchat",
                            style: AppStyles.style20W900,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 200.h,
                        child: const VerticalDivider(
                          color: AppColors.whiteColor,
                          thickness: 2,
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            height: 116.h,
                            width: 116.w,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              Assets.imagesTIKTOK,
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Text(
                            "TikTok",
                            style: AppStyles.style20W900,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(
                    height: 0,
                    color: AppColors.whiteColor,
                    thickness: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 116.h,
                            width: 116.w,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              Assets.imagesSnapchat,
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Text(
                            "Snapchat",
                            style: AppStyles.style20W900,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 200.h,
                        child: const VerticalDivider(
                          color: AppColors.whiteColor,
                          thickness: 2,
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            height: 116.h,
                            width: 116.w,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              Assets.imagesTIKTOK,
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Text(
                            "TikTok",
                            style: AppStyles.style20W900,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(
                    height: 0,
                    color: AppColors.whiteColor,
                    thickness: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 116.h,
                            width: 116.w,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              Assets.imagesSnapchat,
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Text(
                            "Snapchat",
                            style: AppStyles.style20W900,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 200.h,
                        child: const VerticalDivider(
                          color: AppColors.whiteColor,
                          thickness: 2,
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            height: 116.h,
                            width: 116.w,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              Assets.imagesTIKTOK,
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Text(
                            "TikTok",
                            style: AppStyles.style20W900,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
