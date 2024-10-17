import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'instagram_user_details/instagram_user_details_select_all_page.dart';
import 'instagram_user_details/instagram_user_details_select_followers_page.dart';
import 'instagram_user_details/instagram_user_details_select_followings_page.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class InstagramUserDetailsView extends StatefulWidget {
  const InstagramUserDetailsView({super.key});

  @override
  State<InstagramUserDetailsView> createState() =>
      _InstagramUserDetailsViewState();
}

class _InstagramUserDetailsViewState extends State<InstagramUserDetailsView> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _onButtonTapped(int index) {
    setState(() {
      _currentPage = index;
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 1),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              SizedBox(height: 10.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 10.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: isDark ? AppColors.whiteColor : AppColors.blueLight,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      Assets.imagesSendforward,
                    ),
                    Text(
                      "CARZIMA23",
                      style: AppStyles.style24W400,
                    ),
                    GestureDetector(
                      onTap: () {
                        context.pop();
                      },
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: isDark ? AppColors.whiteColor : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32.h),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                            text: "username".tr(context: context),
                            style: AppStyles.style13W600.copyWith(
                              color:
                                  isDark ? AppColors.whiteColor : Colors.black,
                            ),
                            children: [
                              TextSpan(
                                text: " CARZIMA23 ",
                                style: AppStyles.style13W600.copyWith(
                                  color: isDark
                                      ? const Color(0xff00C0CC)
                                      : AppColors.blueLight,
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                            text: "Numberoffollowersandfollowings"
                                .tr(context: context),
                            style: AppStyles.style13W600.copyWith(
                              color:
                                  isDark ? AppColors.whiteColor : Colors.black,
                            ),
                            children: [
                              TextSpan(
                                text: " (4000) ",
                                style: AppStyles.style13W600.copyWith(
                                  color: isDark
                                      ? const Color(0xff00C0CC)
                                      : AppColors.blueLight,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 23.w),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        context.push("/diamondWallet");
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 5.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          color: isDark ? null : AppColors.blueLight,
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
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Text(
                  "* The number allowed to be sent is 400 people only. Please charge more diamonds."
                      .tr(context: context),
                  style: AppStyles.style13W600.copyWith(
                    fontSize: 9.sp,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(height: 35.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        _onButtonTapped(0);
                      },
                      child: Container(
                        height: 66.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          color: _currentPage == 0
                              ? const Color(0xff9E0404)
                              : const Color(0xff999999),
                          boxShadow: [
                            _currentPage == 0
                                ? BoxShadow(
                                    color:
                                        AppColors.whiteColor.withOpacity(0.25),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                    offset: const Offset(0, 0),
                                  )
                                : const BoxShadow(),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "SelectAll".tr(context: context),
                              style: AppStyles.style10W800.copyWith(
                                color: _currentPage == 0
                                    ? Colors.white
                                    : Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "4000",
                              style: AppStyles.style17W800.copyWith(
                                fontWeight: FontWeight.w200,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 25.w),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        _onButtonTapped(1);
                      },
                      child: Container(
                        height: 66.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          color: _currentPage == 1
                              ? AppColors.whiteColor
                              : const Color(0xff999999),
                          boxShadow: [
                            _currentPage == 1
                                ? BoxShadow(
                                    color:
                                        AppColors.whiteColor.withOpacity(0.25),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                    offset: const Offset(0, 0),
                                  )
                                : const BoxShadow(),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "followings".tr(context: context),
                              style: _currentPage == 1
                                  ? AppStyles.style10W800.copyWith(
                                      color: const Color(0xff2F2F2F),
                                    )
                                  : AppStyles.style10W800.copyWith(
                                      color: Colors.white,
                                    ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "1000",
                              style: AppStyles.style17W800.copyWith(
                                color: const Color(0xff2F2F2F),
                                fontWeight: FontWeight.w200,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 25.w),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        _onButtonTapped(2);
                      },
                      child: Container(
                        height: 66.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          color: _currentPage == 2
                              ? AppColors.whiteColor
                              : const Color(0xff999999),
                          boxShadow: [
                            _currentPage == 2
                                ? BoxShadow(
                                    color:
                                        AppColors.whiteColor.withOpacity(0.25),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                    offset: const Offset(0, 0),
                                  )
                                : const BoxShadow(),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Followers".tr(context: context),
                              style: _currentPage == 2
                                  ? AppStyles.style10W800.copyWith(
                                      color: const Color(0xff2F2F2F),
                                    )
                                  : AppStyles.style10W800.copyWith(
                                      color: Colors.white,
                                    ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "3000",
                              style: AppStyles.style17W800.copyWith(
                                color: const Color(0xff2F2F2F),
                                fontWeight: FontWeight.w200,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (int index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  children: const [
                    // Page 1: All
                    InstagramUserDetailsSelectAllPage(),
                    // Page 2: Followers
                    InstagramUserDetailsSelectFollowersPage(),
                    // Page 3: Followings
                    InstagramUserDetailsSelectFollowingsPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
