import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_chart/core/constants/constants.dart';
import '../views/telegram_choose_destination_page/delete_telegram/telegram_delete_all_page.dart';
import '../views/telegram_choose_destination_page/delete_telegram/telegram_delete_chats_page.dart';
import '../views/telegram_choose_destination_page/delete_telegram/telegram_delete_groups_page.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class TelegramDeleteChooseDestinationViewBody extends StatefulWidget {
  const TelegramDeleteChooseDestinationViewBody({super.key});

  @override
  State<TelegramDeleteChooseDestinationViewBody> createState() =>
      _TelegramDeleteChooseDestinationViewBodyState();
}

class _TelegramDeleteChooseDestinationViewBodyState
    extends State<TelegramDeleteChooseDestinationViewBody> {
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
              "Chooseadestination(deleteTelegram)".tr(context: context),
              style: AppStyles.style17W800,
              textAlign: TextAlign.center,
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
                    padding: const EdgeInsets.all(10),
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
                          "deleteAll".tr(context: context),
                          style: AppStyles.style10W800.copyWith(
                            color: _currentPage == 0
                                ? isDark(context)
                                    ? const Color(0xff2F2F2F)
                                    : Colors.white
                                : Colors.white,
                            fontSize: 18.sp,
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
              SizedBox(width: 10.w),
              Expanded(
                child: InkWell(
                  onTap: () {
                    _onButtonTapped(1);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(9),
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
                          "deleteChats".tr(context: context),
                          style: _currentPage == 1
                              ? AppStyles.style10W800.copyWith(
                                  color: isDark(context)
                                      ? const Color(0xff2F2F2F)
                                      : Colors.white,
                                  fontSize: 14.sp,
                                )
                              : AppStyles.style10W800.copyWith(
                                  fontSize: 14.sp,
                                  color: isDark(context)
                                      ? const Color(0xff2F2F2F)
                                      : Colors.white,
                                ),
                        ),
                        Text(
                          "1000",
                          style: AppStyles.style17W800.copyWith(
                            color: isDark(context)
                                ? const Color(0xff2F2F2F)
                                : Colors.white,
                            fontWeight: FontWeight.w200,
                            fontSize: 22.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10.w),
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
                          "deletegroups(locksend)".tr(context: context),
                          style: _currentPage == 2
                              ? AppStyles.style10W800.copyWith(
                                  color: isDark(context)
                                      ? const Color(0xff2F2F2F)
                                      : Colors.white,
                                )
                              : AppStyles.style10W800.copyWith(
                                  color: isDark(context)
                                      ? const Color(0xff2F2F2F)
                                      : Colors.white,
                                ),
                          textAlign: TextAlign.center,
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
                TelegramDeleteAllPage(),
                // Page 2: Chats
                TelegramDeleteChatsPage(),
                // Page 3: Groups
                TelegramDeleteGroupsPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
