import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class SearchPersonToSendFacebookAdViewBody extends StatelessWidget {
  const SearchPersonToSendFacebookAdViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: AppColors.navBarColor,
          padding: EdgeInsetsDirectional.only(bottom: 10.h, start: 20.w),
          child: Row(
            children: [
              SvgPicture.asset(
                Assets.imagesWallet,
              ),
              SizedBox(width: 10.w),
              Text(
                "400",
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
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsetsDirectional.symmetric(
                  horizontal: 21.w, vertical: 24.h),
              child: Column(
                children: [
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                      "أبحث عن شخص ارسل اعلانك على جميع متابعينة",
                      style: AppStyles.style13W600.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 22.h),
                  TextField(
                    onChanged: (value) {},
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: "بحث عن شخص",
                      hintStyle: AppStyles.style14W800.copyWith(
                        color: const Color(0xff9C9C9C),
                      ),
                      filled: true,
                      fillColor: const Color(0xffF3F3F3),
                      prefixIcon: Transform.scale(
                        scale: 0.7,
                        child: SvgPicture.asset(
                          Assets.imagesKeyIcon,
                          height: 15.h,
                          width: 15.w,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.r),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 36.h),
                  Column(
                    children: List.generate(
                      3,
                      (index) {
                        return InkWell(
                          onTap: () {
                            context.push("/xUserDetailsView");
                          },
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 11.w,
                              right: 11.w,
                              bottom: 28.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "CARZIMA24",
                                  style: AppStyles.style13W600.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(width: 17.w),
                                CircleAvatar(
                                  radius: 20.r,
                                  backgroundImage: const AssetImage(
                                    Assets.imagesImageInProfile,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
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
