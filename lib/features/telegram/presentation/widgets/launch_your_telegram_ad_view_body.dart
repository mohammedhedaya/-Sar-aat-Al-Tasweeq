import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../views/launch_pages_view/telegram_delete_page_view.dart';
import '../views/launch_pages_view/telegram_page_view.dart';
import '../views/launch_pages_view/telegram_phone_page_view.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class LaunchYourTelegramAdViewBody extends StatefulWidget {
  const LaunchYourTelegramAdViewBody({super.key});

  @override
  State<LaunchYourTelegramAdViewBody> createState() =>
      _LaunchYourTelegramAdViewBodyState();
}

class _LaunchYourTelegramAdViewBodyState
    extends State<LaunchYourTelegramAdViewBody> {
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
      padding: EdgeInsets.symmetric(horizontal: 21.w, vertical: 25.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  _onButtonTapped(0);
                },
                style: ButtonStyle(
                  backgroundColor: _currentPage == 0
                      ? WidgetStateProperty.all(isDark
                          ? const Color(0xffFFF6F6)
                          : AppColors.blueLight)
                      : WidgetStateProperty.all(const Color(0xffA4A4A4)),
                  shape: WidgetStateProperty.all(
                    const StadiumBorder(),
                  ),
                  visualDensity: VisualDensity.compact,
                  shadowColor: _currentPage == 0
                      ? WidgetStateProperty.all(Colors.white.withOpacity(0.25))
                      : WidgetStateProperty.all(Colors.transparent),
                  elevation: WidgetStateProperty.all(4),
                ),
                child: Text(
                  "telegram".tr(context: context),
                  style: AppStyles.style10W800,
                ),
              ),
              TextButton(
                onPressed: () => _onButtonTapped(1),
                style: ButtonStyle(
                  backgroundColor: _currentPage == 1
                      ? WidgetStateProperty.all(isDark
                          ? const Color(0xffFFF6F6)
                          : AppColors.blueLight)
                      : WidgetStateProperty.all(const Color(0xffA4A4A4)),
                  shape: WidgetStateProperty.all(
                    const StadiumBorder(),
                  ),
                  visualDensity: VisualDensity.compact,
                  shadowColor: _currentPage == 1
                      ? WidgetStateProperty.all(Colors.white.withOpacity(0.25))
                      : WidgetStateProperty.all(Colors.transparent),
                  elevation: WidgetStateProperty.all(4),
                ),
                child: Text(
                  "Contacts".tr(context: context),
                  style: AppStyles.style10W800,
                ),
              ),
              TextButton(
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
                  "delete".tr(context: context),
                  style: AppStyles.style10W800
                      .copyWith(color: AppColors.whiteColor),
                ),
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  TextButton(
                    onPressed: () {
                      context.push('/telegramChatsView');
                    },
                    style: ButtonStyle(
                      backgroundColor: _currentPage == 3
                          ? WidgetStateProperty.all(const Color(0xffFFF6F6))
                          : WidgetStateProperty.all(const Color(0xffA4A4A4)),
                      shape: WidgetStateProperty.all(
                        const StadiumBorder(),
                      ),
                      visualDensity: VisualDensity.compact,
                      shadowColor: _currentPage == 3
                          ? WidgetStateProperty.all(
                              Colors.white.withOpacity(0.25))
                          : WidgetStateProperty.all(Colors.transparent),
                      elevation: WidgetStateProperty.all(4),
                    ),
                    child: Text(
                      "chats".tr(context: context),
                      style: AppStyles.style10W800,
                    ),
                  ),
                  Positioned(
                    top: -7,
                    right: -10,
                    child: CircleAvatar(
                      radius: 12.r,
                      backgroundColor: AppColors.redColor,
                      child: Text(
                        "7",
                        style: AppStyles.style10W800
                            .copyWith(color: AppColors.whiteColor),
                      ),
                    ),
                  ),
                ],
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
                // Page 1: Telegram
                TelegramPageView(),
                // Page 2: Phone Directory
                TelegramPhoneDirectoryPageView(),
                // Page 3: Deleted
                TelegramDeletePageView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
