import 'package:adaptive_theme/adaptive_theme.dart';
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
          color: isDark ? AppColors.navBarColor : null,
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
                    hintText: "اكتب رسالتك",
                    onSuffixIconTap: () {},
                  ),
                  SizedBox(height: 72.h),
                  const CustomChooseGroupPastLinkTextField(),
                  SizedBox(height: 19.h),
                  CustomAuthTextField(
                    fiiledColor: AppColors.whiteColor.withOpacity(0.10),
                    hintText: "أضف الموقع",
                    hintStyle: AppStyles.style12W700.copyWith(
                      color: const Color(0xffffffff),
                    ),
                    suffixIcon: Transform.scale(
                      scale: 0.5,
                      child: SvgPicture.asset(
                        Assets.imagesLocationTeal,
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
                            horizontal: 22.w, vertical: 4.h),
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
                        child: Text(
                          "إختار أحد القنوات",
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
