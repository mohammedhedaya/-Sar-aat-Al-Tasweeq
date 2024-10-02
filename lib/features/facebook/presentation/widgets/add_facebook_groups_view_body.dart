import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class AddFacebookGroupsViewBody extends StatefulWidget {
  const AddFacebookGroupsViewBody({super.key});

  @override
  State<AddFacebookGroupsViewBody> createState() =>
      _AddFacebookGroupsViewBodyState();
}

class _AddFacebookGroupsViewBodyState extends State<AddFacebookGroupsViewBody> {
  List<bool> isAdded = List.generate(15, (index) => false);
  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 13.w, end: 32.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      Assets.imagesWallet,
                      colorFilter: ColorFilter.mode(
                        isDark ? Colors.white : AppColors.blueLight,
                        BlendMode.srcIn,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      "300",
                      style: AppStyles.style17W800,
                    ),
                    SizedBox(width: 10.w),
                    SvgPicture.asset(
                      Assets.imagesJewel,
                      colorFilter: ColorFilter.mode(
                        isDark ? Colors.white : AppColors.blueLight,
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
                    padding: EdgeInsetsDirectional.symmetric(
                      horizontal: 10.w,
                      vertical: 4.h,
                    ),
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
                        "recharge".tr(context: context),
                        style: AppStyles.style14W400,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 44.h),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 7.w, end: 37.w),
            child: TextField(
              onChanged: (value) {},
              style: AppStyles.style20W400.copyWith(
                color: Colors.black,
              ),
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                isDense: true,
                hintText: "search".tr(context: context),
                hintStyle: AppStyles.style20W400.copyWith(
                  color: Colors.black,
                ),
                prefixIcon: Transform.scale(
                  scale: 0.65,
                  child: SvgPicture.asset(
                    Assets.imagesKeyIcon,
                  ),
                ),
                filled: true,
                fillColor: const Color(0xffF3F3F3),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.r),
                  borderSide: const BorderSide(
                    style: BorderStyle.none,
                    width: 0,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 40.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: GridView.count(
              crossAxisCount: 3,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 10.w,
              mainAxisSpacing: 10.h,
              childAspectRatio: 0.8,
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
                          style: AppStyles.style13W600,
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
                                        color: Colors.white,
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
                                              "https://facebook.com/groups/",
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
                                              gradient: const LinearGradient(
                                                colors: [
                                                  Color(0xff00C0CC),
                                                  Color(0xff006066),
                                                ],
                                                begin: Alignment.centerLeft,
                                                end: Alignment.centerRight,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5.r),
                                            ),
                                            child: Center(
                                              child: Text(
                                                "next".tr(context: context),
                                                style: AppStyles.style14W400,
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
                                  : const LinearGradient(
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
                                isAdded[i]
                                    ? "Joined".tr(context: context)
                                    : "add".tr(context: context),
                                style: AppStyles.style14W400,
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
          SizedBox(height: 25.h),
        ],
      ),
    );
  }
}
