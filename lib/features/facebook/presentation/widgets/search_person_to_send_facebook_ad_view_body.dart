import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
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
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: isDark ? AppColors.navBarColor : AppColors.navBarColor,
          padding: EdgeInsetsDirectional.only(start: 15.w, bottom: 10.h),
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
                  fontFamily: "Titillium Web",
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
                      "Searchforsomeonewhosentyouradtoallofhisfollowers"
                          .tr(context: context),
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
                      hintText: "Searchforaperson".tr(context: context),
                      hintStyle: AppStyles.style14W800.copyWith(
                        color: Colors.black,
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
                            context.push("/facebookUserDetailsView");
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
