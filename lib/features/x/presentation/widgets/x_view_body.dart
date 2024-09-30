import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import '../../../auth/presentation/widgets/auth_btn.dart';
import '../../../auth/presentation/widgets/auth_text_field.dart';
import '../../../whatsapp/presentation/widgets/custom_show_dialog.dart';

class XViewBody extends StatelessWidget {
  const XViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 40.h,
                child: Text(
                  "X",
                  style: AppStyles.style78W400,
                  textAlign: TextAlign.center,
                ),
              ),
              SvgPicture.asset(
                Assets.imagesXIcon,
              ),
            ],
          ),
          SizedBox(height: 100.h),
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
                CustomAuthTextField(
                  onChanged: (value) {},
                  hintStyle: AppStyles.style14W400.copyWith(
                    color: const Color(0xffBABABA),
                  ),
                  hintText: "username".tr(context: context),
                  textAlign: TextAlign.center,
                  fiiledColor: Colors.white.withOpacity(0.10),
                ),
                SizedBox(height: 35.h),
                CustomAuthTextField(
                  onChanged: (value) {},
                  hintStyle: AppStyles.style14W400.copyWith(
                    color: const Color(0xffBABABA),
                  ),
                  hintText: "password".tr(context: context),
                  textAlign: TextAlign.center,
                  fiiledColor: Colors.white.withOpacity(0.10),
                ),
                SizedBox(height: 36.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: CustomAuthBtn(
                    onPressed: () {
                      showDialog(
                        context: context,
                        barrierColor: const Color(0xffFFF9F9).withOpacity(0.33),
                        builder: (context) {
                          return CustomShowDialog(
                            onTap: () {
                              context.push("/launchYourXAdView");
                            },
                            image: Assets.imagesXerror,
                            textButton: "subscribe".tr(context: context),
                            content: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "pleaseSubscribeToThePackage"
                                      .tr(context: context),
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
                    text: "log in".tr(context: context),
                  ),
                ),
                SizedBox(height: 39.h),
                Text(
                "SeehowtouseX?".tr(context: context),
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
                      "hearyouclearly".tr(context: context),
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
                  "WeHelpYou".tr(context: context),
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
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "suggestions".tr(context: context),
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
