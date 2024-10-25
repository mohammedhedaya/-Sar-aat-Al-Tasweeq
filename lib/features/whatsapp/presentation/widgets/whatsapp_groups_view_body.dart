import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class WhatsappGroupsViewBody extends StatelessWidget {
  const WhatsappGroupsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: isDark ? AppColors.navBarColor : AppColors.blueLight,
          padding: EdgeInsetsDirectional.only(start: 10.w, bottom: 10.h),
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
                  color: Colors.white,
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
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Column(
                    children: List.generate(
                      10,
                      (index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 26.h),
                          child: ListTile(
                            tileColor: isDark ? null : AppColors.fillLight,
                            onTap: () {
                              context.push("/whatsappGroupsDetailsView");
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.r),
                              side: BorderSide(
                                color:
                                    isDark ? Colors.white : AppColors.blueLight,
                                width: 1,
                              ),
                            ),
                            title: Text(
                              "مجموعات المملكة العربية السعودية",
                              style: AppStyles.style14W700,
                            ),
                            leading: SvgPicture.asset(
                              Assets.imagesSuadiFlag,
                              height: 44.h,
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
