import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../views/launch_page_views/delete_groups_page_view.dart';
import '../views/launch_page_views/facebook_page_view.dart';
import '../views/launch_page_views/groups_page_view.dart';

class LaunchYourFacebookAdViewBody extends StatefulWidget {
  const LaunchYourFacebookAdViewBody({super.key});

  @override
  State<LaunchYourFacebookAdViewBody> createState() =>
      _LaunchYourFacebookAdViewBodyState();
}

class _LaunchYourFacebookAdViewBodyState
    extends State<LaunchYourFacebookAdViewBody> {
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
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 34.w, vertical: 25.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    _onButtonTapped(0);
                  },
                  style: ButtonStyle(
                    backgroundColor: _currentPage == 0
                        ? WidgetStateProperty.all(
                            isDark
                                ? const Color(0xffFFF6F6)
                                : AppColors.blueLight,
                          )
                        : WidgetStateProperty.all(const Color(0xffA4A4A4)),
                    shape: WidgetStateProperty.all(
                      const StadiumBorder(),
                    ),
                    visualDensity: VisualDensity.compact,
                    shadowColor: _currentPage == 0
                        ? WidgetStateProperty.all(
                            Colors.white.withOpacity(0.25))
                        : WidgetStateProperty.all(Colors.transparent),
                    elevation: WidgetStateProperty.all(4),
                  ),
                  child: Text(
                    "facebook".tr(context: context),
                    style: AppStyles.style10W800.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 18.w),
              Expanded(
                child: TextButton(
                  onPressed: () => _onButtonTapped(1),
                  style: ButtonStyle(
                    backgroundColor: _currentPage == 1
                        ? WidgetStateProperty.all(
                            isDark
                                ? const Color(0xffFFF6F6)
                                : AppColors.blueLight,
                          )
                        : WidgetStateProperty.all(const Color(0xffA4A4A4)),
                    shape: WidgetStateProperty.all(
                      const StadiumBorder(),
                    ),
                    visualDensity: VisualDensity.compact,
                    shadowColor: _currentPage == 1
                        ? WidgetStateProperty.all(
                            Colors.white.withOpacity(0.25))
                        : WidgetStateProperty.all(Colors.transparent),
                    elevation: WidgetStateProperty.all(4),
                  ),
                  child: Text(
                    "groups".tr(context: context),
                    style: AppStyles.style10W800.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 18.w),
              Expanded(
                child: TextButton(
                  onPressed: () => _onButtonTapped(2),
                  style: ButtonStyle(
                    backgroundColor: _currentPage == 2
                        ? WidgetStateProperty.all(const Color(0xff9E0404))
                        : WidgetStateProperty.all(const Color(0xff9E0404)),
                    shape: WidgetStateProperty.all(
                      const StadiumBorder(),
                    ),
                    visualDensity: VisualDensity.compact,
                    shadowColor: _currentPage == 3
                        ? WidgetStateProperty.all(
                            const Color(0xff9E0404).withOpacity(0.25))
                        : WidgetStateProperty.all(Colors.transparent),
                    elevation: WidgetStateProperty.all(4),
                  ),
                  child: Text(
                    "deleteGroups".tr(context: context),
                    style: AppStyles.style10W800.copyWith(
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 50.h),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (int index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: const [
                // Page 1: Facebook Page
                FacebookPageView(),
                // Page 2: Facebook Groups Page
                GroupsPageView(),
                // Page 3: Delete Groups Page
                DeleteGroupsPageView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
