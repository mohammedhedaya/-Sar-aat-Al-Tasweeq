import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/core/constants/constants.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class TiktokChooseDestinationSendToFollowersViewBody extends StatefulWidget {
  const TiktokChooseDestinationSendToFollowersViewBody({super.key});

  @override
  State<TiktokChooseDestinationSendToFollowersViewBody> createState() =>
      _TiktokChooseDestinationSendToFollowersViewBodyState();
}

class _TiktokChooseDestinationSendToFollowersViewBodyState
    extends State<TiktokChooseDestinationSendToFollowersViewBody> {
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.w, vertical: 25.h),
      child: Column(
        children: [
          Center(
            child: Text(
              "Choosedestination(TikTok)".tr(context: context),
              style: AppStyles.style17W800,
            ),
          ),
          SizedBox(height: 40.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    _onButtonTapped(0);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: _currentPage == 0
                          ? isDark(context)
                              ? AppColors.whiteColor
                              : AppColors.blueLight
                          : const Color(0xff999999),
                      boxShadow: [
                        _currentPage == 0
                            ? BoxShadow(
                                color: AppColors.whiteColor.withOpacity(0.25),
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset: const Offset(0, 0),
                              )
                            : const BoxShadow(),
                      ],
                    ),
                    child: Column(
                      children: [
                        Text(
                          "All".tr(context: context),
                          style: AppStyles.style17W800.copyWith(
                            color: _currentPage == 0
                                ? isDark(context)
                                    ? const Color(0xff2F2F2F)
                                    : Colors.white
                                : Colors.white,
                          ),
                        ),
                        Text(
                          "4000",
                          style: AppStyles.style17W800.copyWith(
                            color: isDark(context)
                                ? const Color(0xff2F2F2F)
                                : Colors.white,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15.w),
              Expanded(
                child: InkWell(
                  onTap: () {
                    _onButtonTapped(1);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: _currentPage == 1
                          ? isDark(context)
                              ? AppColors.whiteColor
                              : AppColors.blueLight
                          : const Color(0xff999999),
                      boxShadow: [
                        _currentPage == 1
                            ? BoxShadow(
                                color: AppColors.whiteColor.withOpacity(0.25),
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset: const Offset(0, 0),
                              )
                            : const BoxShadow(),
                      ],
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Followers".tr(context: context),
                          style: _currentPage == 1
                              ? AppStyles.style17W800.copyWith(
                                  color: isDark(context)
                                      ? const Color(0xff2F2F2F)
                                      : Colors.white)
                              : AppStyles.style17W800.copyWith(
                                  color: Colors.white,
                                ),
                        ),
                        Text(
                          "1000",
                          style: AppStyles.style17W800.copyWith(
                            color: isDark(context)
                                ? const Color(0xff2F2F2F)
                                : Colors.white,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15.w),
              Expanded(
                child: InkWell(
                  onTap: () {
                    _onButtonTapped(2);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: _currentPage == 2
                          ? isDark(context)
                              ? AppColors.whiteColor
                              : AppColors.blueLight
                          : const Color(0xff999999),
                      boxShadow: [
                        _currentPage == 2
                            ? BoxShadow(
                                color: AppColors.whiteColor.withOpacity(0.25),
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset: const Offset(0, 0),
                              )
                            : const BoxShadow(),
                      ],
                    ),
                    child: Column(
                      children: [
                        Text(
                          "followings".tr(context: context),
                          style: _currentPage == 2
                              ? AppStyles.style17W800.copyWith(
                                  color: isDark(context)
                                      ? const Color(0xff2F2F2F)
                                      : Colors.white,
                                )
                              : AppStyles.style17W800.copyWith(
                                  color: Colors.white,
                                ),
                        ),
                        Text(
                          "3000",
                          style: AppStyles.style17W800.copyWith(
                            color: isDark(context)
                                ? const Color(0xff2F2F2F)
                                : Colors.white,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
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
                TikTokSendToAllFollowrsPage(),
                // Page 2: My Followers
                TikTokSendToMyFollowrsPage(),
                // Page 3: My Followings
                TikTokSendToMyFollowingsPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TikTokSendToAllFollowrsPage extends StatefulWidget {
  const TikTokSendToAllFollowrsPage({super.key});

  @override
  State<TikTokSendToAllFollowrsPage> createState() =>
      _TikTokSendToAllFollowrsPageState();
}

class _TikTokSendToAllFollowrsPageState
    extends State<TikTokSendToAllFollowrsPage> {
  bool selectAll = false;
  List<bool> isSelected = List.generate(15, (index) => false);
  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return Column(
      children: [
        SizedBox(height: 25.h),
        CheckboxListTile(
          title: Text(
            "SelectAll".tr(context: context),
            style: AppStyles.style13W600,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2.r),
          ),
          activeColor: isDark ? const Color(0xff00C0CC) : AppColors.yellowLight,
          checkColor: isDark ? const Color(0xff00C0CC) : AppColors.yellowLight,
          visualDensity: VisualDensity.compact,
          contentPadding: EdgeInsets.zero,
          side: BorderSide(
            color: isDark ? Colors.white : AppColors.blueLight,
          ),
          value: selectAll,
          onChanged: (value) {
            setState(() {
              selectAll = value!;
              isSelected =
                  List.generate(isSelected.length, (index) => selectAll);
            });
          },
        ),
        SizedBox(height: 20.h),
        Expanded(
          child: ListView.builder(
            itemCount: isSelected.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  CheckboxListTile(
                    title: Text(
                      'فيصل عبدالعزيز',
                      style: AppStyles.style13W600,
                    ),
                    contentPadding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.r),
                    ),
                    activeColor: isDark
                        ? const Color(0xff00C0CC)
                        : AppColors.yellowLight,
                    checkColor: isDark
                        ? const Color(0xff00C0CC)
                        : AppColors.yellowLight,
                    visualDensity: VisualDensity.compact,
                    side: BorderSide(
                      color: isDark ? Colors.white : AppColors.blueLight,
                    ),
                    value: isSelected[index],
                    onChanged: (value) {
                      setState(() {
                        isSelected[index] = value!;
                        if (!value) selectAll = false;
                        if (isSelected.every((element) => element)) {
                          selectAll = true;
                        }
                      });
                    },
                  ),
                  Divider(
                    color: isDark ? Colors.white : AppColors.hightYellowLight,
                    thickness: 1,
                    endIndent: 25.w,
                    indent: 25.w,
                  ),
                ],
              );
            },
          ),
        ),
        InkWell(
          onTap: () {
            context.push('/tiktokSendingView');
          },
          child: Container(
            height: 40.h,
            width: 200.w,
            padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 4.h),
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
                "send".tr(context: context),
                style: AppStyles.style14W400.copyWith(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class TikTokSendToMyFollowrsPage extends StatefulWidget {
  const TikTokSendToMyFollowrsPage({super.key});

  @override
  State<TikTokSendToMyFollowrsPage> createState() =>
      _TikTokSendToMyFollowrsPageState();
}

class _TikTokSendToMyFollowrsPageState
    extends State<TikTokSendToMyFollowrsPage> {
  bool selectAll = false;
  List<bool> isSelected = List.generate(15, (index) => false);
  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return Column(
      children: [
        SizedBox(height: 25.h),
        CheckboxListTile(
          title: Text(
            "SelectAll".tr(context: context),
            style: AppStyles.style13W600,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2.r),
          ),
          activeColor: isDark ? const Color(0xff00C0CC) : AppColors.yellowLight,
          checkColor: isDark ? const Color(0xff00C0CC) : AppColors.yellowLight,
          visualDensity: VisualDensity.compact,
          contentPadding: EdgeInsets.zero,
          side: BorderSide(
            color: isDark ? Colors.white : AppColors.blueLight,
          ),
          value: selectAll,
          onChanged: (value) {
            setState(() {
              selectAll = value!;
              isSelected =
                  List.generate(isSelected.length, (index) => selectAll);
            });
          },
        ),
        SizedBox(height: 20.h),
        Expanded(
          child: ListView.builder(
            itemCount: isSelected.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  CheckboxListTile(
                    title: Text(
                      'فيصل عبدالعزيز',
                      style: AppStyles.style13W600,
                    ),
                    contentPadding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.r),
                    ),
                    activeColor: isDark
                        ? const Color(0xff00C0CC)
                        : AppColors.yellowLight,
                    checkColor: isDark
                        ? const Color(0xff00C0CC)
                        : AppColors.yellowLight,
                    visualDensity: VisualDensity.compact,
                    side: BorderSide(
                      color: isDark ? Colors.white : AppColors.blueLight,
                    ),
                    value: isSelected[index],
                    onChanged: (value) {
                      setState(() {
                        isSelected[index] = value!;
                        if (!value) selectAll = false;
                        if (isSelected.every((element) => element)) {
                          selectAll = true;
                        }
                      });
                    },
                  ),
                  Divider(
                    color: isDark ? Colors.white : AppColors.hightYellowLight,
                    thickness: 1,
                    endIndent: 25.w,
                    indent: 25.w,
                  ),
                ],
              );
            },
          ),
        ),
        InkWell(
          onTap: () {
            context.push('/tiktokSendingView');
          },
          child: Container(
            height: 40.h,
            width: 200.w,
            padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 4.h),
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
                "send".tr(context: context),
                style: AppStyles.style14W400.copyWith(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class TikTokSendToMyFollowingsPage extends StatefulWidget {
  const TikTokSendToMyFollowingsPage({super.key});

  @override
  State<TikTokSendToMyFollowingsPage> createState() =>
      _TikTokSendToMyFollowingsPageState();
}

class _TikTokSendToMyFollowingsPageState
    extends State<TikTokSendToMyFollowingsPage> {
  bool selectAll = false;
  List<bool> isSelected = List.generate(15, (index) => false);
  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return Column(
      children: [
        SizedBox(height: 25.h),
        CheckboxListTile(
          title: Text(
            "SelectAll".tr(context: context),
            style: AppStyles.style13W600,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2.r),
          ),
          activeColor: isDark ? const Color(0xff00C0CC) : AppColors.yellowLight,
          checkColor: isDark ? const Color(0xff00C0CC) : AppColors.yellowLight,
          visualDensity: VisualDensity.compact,
          contentPadding: EdgeInsets.zero,
          side: BorderSide(
            color: isDark ? Colors.white : AppColors.blueLight,
          ),
          value: selectAll,
          onChanged: (value) {
            setState(() {
              selectAll = value!;
              isSelected =
                  List.generate(isSelected.length, (index) => selectAll);
            });
          },
        ),
        SizedBox(height: 20.h),
        Expanded(
          child: ListView.builder(
            itemCount: isSelected.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  CheckboxListTile(
                    title: Text(
                      'فيصل عبدالعزيز',
                      style: AppStyles.style13W600,
                    ),
                    contentPadding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.r),
                    ),
                    activeColor: isDark
                        ? const Color(0xff00C0CC)
                        : AppColors.yellowLight,
                    checkColor: isDark
                        ? const Color(0xff00C0CC)
                        : AppColors.yellowLight,
                    visualDensity: VisualDensity.compact,
                    side: BorderSide(
                      color: isDark ? Colors.white : AppColors.blueLight,
                    ),
                    value: isSelected[index],
                    onChanged: (value) {
                      setState(() {
                        isSelected[index] = value!;
                        if (!value) selectAll = false;
                        if (isSelected.every((element) => element)) {
                          selectAll = true;
                        }
                      });
                    },
                  ),
                  Divider(
                    color: isDark ? Colors.white : AppColors.hightYellowLight,
                    thickness: 1,
                    endIndent: 25.w,
                    indent: 25.w,
                  ),
                ],
              );
            },
          ),
        ),
        InkWell(
          onTap: () {
            context.push('/tiktokSendingView');
          },
          child: Container(
            height: 40.h,
            width: 200.w,
            padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 4.h),
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
                "send".tr(context: context),
                style: AppStyles.style14W400.copyWith(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
