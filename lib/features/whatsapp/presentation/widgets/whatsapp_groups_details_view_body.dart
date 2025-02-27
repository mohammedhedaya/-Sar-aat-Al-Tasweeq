import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_colors.dart';

import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import 'custom_show_dialog.dart';

class GroupsDetailsViewBody extends StatefulWidget {
  const GroupsDetailsViewBody({super.key});

  @override
  State<GroupsDetailsViewBody> createState() => _GroupsDetailsViewBodyState();
}

class _GroupsDetailsViewBodyState extends State<GroupsDetailsViewBody> {
  List<bool> isAdded = List.generate(15, (index) => false);

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return Column(
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
                    colorFilter: ColorFilter.mode(
                      isDark ? Colors.white : AppColors.blackColor,
                      BlendMode.srcIn,
                    ),
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
                    colorFilter: ColorFilter.mode(
                      isDark ? Colors.white : AppColors.blackColor,
                      BlendMode.srcIn,
                    ),
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
                      "recharge".tr(context: context),
                      style: AppStyles.style14W400.copyWith(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          thickness: 1,
          color: isDark ? Colors.white : Colors.black,
        ),
        CountryCodePicker(
          onChanged: (value) {},
          initialSelection: 'SA',
          showCountryOnly: false,
          showOnlyCountryWhenClosed: true,
          favorite: const ["+966", "SA"],
          showDropDownButton: true,
          boxDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.r),
          ),
          dialogTextStyle: const TextStyle(
            color: Colors.white,
          ),
          alignLeft: true,
          flagWidth: 40.w,
          showFlagDialog: true,
        ),
        Divider(
          thickness: 1,
          color: isDark ? Colors.white : Colors.black,
        ),
        SizedBox(height: 25.h),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 10.w,
              mainAxisSpacing: 10.h,
              childAspectRatio: 0.85.r,
              shrinkWrap: true,
              children: [
                for (int i = 0; i < 15; i++)
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
                        color: isDark ? Colors.white : AppColors.blueLight,
                        width: 1,
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "جروب العائلة",
                          style: AppStyles.style13W600.copyWith(
                            color: isDark ? Colors.white : AppColors.blueLight,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            if (!isAdded[i]) {
                              setState(() {
                                isAdded[i] = true;
                              });
                            } else {
                              showDialog(
                                context: context,
                                useSafeArea: true,
                                barrierColor:
                                    const Color(0xffFFF9F9).withOpacity(0.33),
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text(
                                      "GroupLink".tr(context: context),
                                      style: AppStyles.style12W400.copyWith(
                                        color: isDark
                                            ? Colors.white
                                            : AppColors.blueLight,
                                      ),
                                    ),
                                    content: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.10),
                                        borderRadius:
                                            BorderRadius.circular(20.r),
                                      ),
                                      padding: const EdgeInsets.all(22),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              "https://web.whatsapp.com/",
                                              style: AppStyles.style12W400
                                                  .copyWith(
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
                                              colorFilter:
                                                  const ColorFilter.mode(
                                                Colors.white,
                                                BlendMode.srcIn,
                                              ),
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
                                              color: isDark
                                                  ? null
                                                  : AppColors.whiteColor
                                                      .withOpacity(0.10),
                                              gradient: isDark
                                                  ? const LinearGradient(
                                                      colors: [
                                                        Color(0xff00C0CC),
                                                        Color(0xff006066),
                                                      ],
                                                      begin:
                                                          Alignment.centerLeft,
                                                      end:
                                                          Alignment.centerRight,
                                                    )
                                                  : null,
                                              borderRadius:
                                                  BorderRadius.circular(5.r),
                                            ),
                                            child: Center(
                                              child: Text(
                                                "next".tr(context: context),
                                                style: AppStyles.style14W400
                                                    .copyWith(
                                                  color: Colors.white,
                                                ),
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
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                              vertical: 3.h,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              gradient: isAdded[i]
                                  ? const LinearGradient(
                                      colors: [
                                        Color.fromARGB(255, 121, 125, 126),
                                        Color.fromARGB(255, 127, 130, 130),
                                      ],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                    )
                                  : isDark
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
                                isAdded[i]
                                    ? "Joined".tr(context: context)
                                    : "add".tr(context: context),
                                style: AppStyles.style14W400.copyWith(
                                  color: Colors.white,
                                ),
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
        ),
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
                      return CustomShowRechargeDialog(
                        onTap: () {
                          context.push("/diamondWallet");
                        },
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
                    color: isDark ? null : AppColors.yellowLight,
                    gradient: isDark
                        ? const LinearGradient(
                            colors: [
                              Color(0xff00C0CC),
                              Color(0xff006066),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          )
                        : null,
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
                        style: AppStyles.style14W400.copyWith(
                          color: Colors.white,
                        ),
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
                          "Choose300groupsrandomly".tr(context: context),
                          style: AppStyles.style14W400.copyWith(
                            color: Colors.white,
                          ),
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
    );
  }
}
