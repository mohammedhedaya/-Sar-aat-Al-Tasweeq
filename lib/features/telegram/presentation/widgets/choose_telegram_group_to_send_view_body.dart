import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import '../../../auth/presentation/widgets/auth_text_field.dart';
import '../../../whatsapp/presentation/widgets/launch_ad_choose_group_view_body.dart.dart';
import '../../../whatsapp/presentation/widgets/launch_text_field.dart';

class ChooseTelegramGroupToSendViewBody extends StatelessWidget {
  const ChooseTelegramGroupToSendViewBody({super.key});

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
                  color: Colors.white,
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
              padding: const EdgeInsets.all(33.0),
              child: Column(
                children: [
                  LaunchAdTextField(
                    onChanged: (value) {},
                    hintText: "writeyourmessage".tr(context: context),
                    onSuffixIconTap: () {},
                  ),
                  SizedBox(height: 72.h),
                  const CustomChooseGroupPastLinkTextField(),
                  SizedBox(height: 19.h),
                  CustomAuthTextField(
                    fiiledColor: isDark
                        ? AppColors.whiteColor.withOpacity(0.10)
                        : AppColors.fillLight,
                    hintText: "addLink".tr(context: context),
                    hintStyle: AppStyles.style12W700.copyWith(
                      color: isDark
                          ? const Color(0xffffffff)
                          : const Color(0xff000000),
                    ),
                    suffixIcon: Transform.scale(
                      scale: 0.5,
                      child: isDark
                          ? SvgPicture.asset(
                              Assets.imagesLocationTeal,
                            )
                          : SvgPicture.asset(
                              Assets.imagesLocationLight,
                            ),
                    ),
                    onChanged: (value) {},
                  ),
                  SizedBox(height: 100.h),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.h),
                    child: InkWell(
                      onTap: () {
                        context.push('/chooseTelegramGroupToSendView1');
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 22.w,
                          vertical: 4.h,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            gradient: isDark
                                ? const LinearGradient(
                                    colors: [
                                      Color(0xff00C0CC),
                                      Color(0xff006066),
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                  )
                                : const LinearGradient(
                                    colors: [
                                      AppColors.linearLight1,
                                      AppColors.linearLight2,
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                  )),
                        child: Text(
                          "Chooseoneofthegroups".tr(context: context),
                          style: AppStyles.style14W400.copyWith(
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
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
