import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_style.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../auth/presentation/widgets/auth_text_field.dart';
import '../../../../whatsapp/presentation/widgets/launch_text_field.dart';

class TelegramPhoneDirectoryPageView extends StatelessWidget {
  const TelegramPhoneDirectoryPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;

    return SingleChildScrollView(
      child: Column(
        children: [
          LaunchAdTextField(
            onChanged: (value) {},
            hintText: 'writeyourmessage'.tr(context: context),
            onSuffixIconTap: () {},
          ),
          SizedBox(height: 72.h),
          CustomAuthTextField(
            fiiledColor: isDark
                ? AppColors.whiteColor.withOpacity(0.10)
                : const Color(0xff8ea7bf).withOpacity(0.26),
            hintText: "addLink".tr(context: context),
            hintStyle: AppStyles.style12W700.copyWith(
              color: isDark ? const Color(0xffffffff) : const Color(0xff000000),
            ),
            suffixIcon: InkWell(
              onTap: () {},
              child: Transform.scale(
                scale: 0.5,
                child: isDark
                    ? SvgPicture.asset(
                        Assets.imagesLinkTeal,
                      )
                    : SvgPicture.asset(
                        Assets.imagesLinkLight,
                      ),
              ),
            ),
            onChanged: (value) {},
          ),
          SizedBox(height: 19.h),
          CustomAuthTextField(
            fiiledColor: isDark
                ? AppColors.whiteColor.withOpacity(0.10)
                : const Color(0xff8ea7bf).withOpacity(0.26),
            hintText: "addLocation".tr(context: context),
            hintStyle: AppStyles.style12W700.copyWith(
              color: isDark ? const Color(0xffffffff) : const Color(0xff000000),
            ),
            suffixIcon: InkWell(
              onTap: () {},
              child: Transform.scale(
                scale: 0.5,
                child: isDark
                    ? SvgPicture.asset(
                        Assets.imagesLocationTeal,
                      )
                    : SvgPicture.asset(
                        Assets.imagesLocationLight,
                      ),
              ),
            ),
            onChanged: (value) {},
          ),
          SizedBox(height: 80.h),
          Center(
            child: InkWell(
              onTap: () {
                context.push('/phoneChooseTheDestinationView');
              },
              child: Container(
                height: 40.h,
                width: 200.w,
                padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: isDark ? null : AppColors.blueLight,
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
                        ),
                ),
                child: Center(
                  child: Text(
                    "chooseDestination".tr(context: context),
                    style: AppStyles.style14W400.copyWith(
                      color: isDark ? AppColors.whiteColor : Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
