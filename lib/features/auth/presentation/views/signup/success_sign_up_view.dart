import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_style.dart';
import '../../../../../core/utils/assets.dart';

class SuccessSignUpView extends StatelessWidget {
  const SuccessSignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return Scaffold(
      backgroundColor: isDark ? null : AppColors.blueLight,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: SvgPicture.asset(
              Assets.imagesSuccesscircle4,
              colorFilter: ColorFilter.mode(
                isDark ? const Color(0xffD9D9D9) : AppColors.yellowLight,
                BlendMode.srcIn,
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 50,
            child: SvgPicture.asset(
              Assets.imagesSuccesscircle2,
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                isDark ? const Color(0xffD9D9D9) : AppColors.yellowLight,
                BlendMode.srcIn,
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 50,
            child: SvgPicture.asset(
              Assets.imagesSuccesscircle3,
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                isDark ? const Color(0xffD9D9D9) : AppColors.yellowLight,
                BlendMode.srcIn,
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset(
              Assets.imagesSuccesscircle1,
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                isDark ? const Color(0xffD9D9D9) : AppColors.yellowLight,
                BlendMode.srcIn,
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.3),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: Column(
                  children: [
                    const Center(
                      child: Icon(
                        Icons.check_circle_outline_sharp,
                        color: AppColors.whiteColor,
                        size: 140,
                      ),
                    ),
                    const SizedBox(height: 35),
                    Text(
                      "your_account_has_been_successfully_registered"
                          .tr(context: context),
                      style: AppStyles.style25W800.copyWith(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "start_marketing".tr(context: context),
                          style: AppStyles.style32W700.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            context.go('/navBarView');
                          },
                          child: isDark
                              ? Container(
                                  constraints: const BoxConstraints(
                                    minHeight: 64,
                                    minWidth: 64,
                                  ),
                                  decoration: const BoxDecoration(
                                    color: AppColors.loginBtn,
                                    shape: BoxShape.circle,
                                  ),
                                  child: context.locale == const Locale('en')
                                      ? Center(
                                          child: Transform.flip(
                                            flipX: true,
                                            child: SvgPicture.asset(
                                              Assets
                                                  .imagesArrowForwardLoginPage,
                                            ),
                                          ),
                                        )
                                      : Center(
                                          child: SvgPicture.asset(
                                            Assets.imagesArrowForwardLoginPage,
                                          ),
                                        ),
                                )
                              : Container(
                                  constraints: const BoxConstraints(
                                    minHeight: 64,
                                    minWidth: 64,
                                  ),
                                  decoration: const BoxDecoration(
                                    color: AppColors.whiteColor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: context.locale == const Locale('en')
                                      ? Center(
                                          child: Transform.flip(
                                            flipX: true,
                                            child: SvgPicture.asset(
                                              Assets
                                                  .imagesArrowForwardLoginPage,
                                              colorFilter:
                                                  const ColorFilter.mode(
                                                AppColors.blueLight,
                                                BlendMode.srcIn,
                                              ),
                                            ),
                                          ),
                                        )
                                      : Center(
                                          child: SvgPicture.asset(
                                            Assets.imagesArrowForwardLoginPage,
                                            colorFilter: const ColorFilter.mode(
                                              AppColors.blueLight,
                                              BlendMode.srcIn,
                                            ),
                                          ),
                                        ),
                                ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
