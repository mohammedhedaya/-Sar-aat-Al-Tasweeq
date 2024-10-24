import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_chart/core/constants/constants.dart';
import '../views/whatsapp_choose_detination_pages_view/delete_whatsapp/whatsapp_delete_all_page.dart';
import '../views/whatsapp_choose_detination_pages_view/delete_whatsapp/wjatsapp_delete_gropus_page.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../views/whatsapp_choose_detination_pages_view/delete_whatsapp/whatsapp_delete chats_page.dart';

class WhatsappChooseDestinationDeleteGroupsViewBody extends StatefulWidget {
  const WhatsappChooseDestinationDeleteGroupsViewBody({super.key});

  @override
  State<WhatsappChooseDestinationDeleteGroupsViewBody> createState() =>
      _WhatsappChooseDestinationDeleteGroupsViewBodyState();
}

class _WhatsappChooseDestinationDeleteGroupsViewBodyState
    extends State<WhatsappChooseDestinationDeleteGroupsViewBody> {
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
              "ChooseAdestination(Deletewhatsapp)".tr(context: context),
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
              SizedBox(width: 10.w),
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
                          "chats".tr(context: context),
                          style: _currentPage == 1
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
                              ? AppStyles.style17W800.copyWith(
                                  color: isDark(context)
                                      ? const Color(0xff2F2F2F)
                                      : Colors.white,
                                  fontSize: 8.sp,
                                )
                              : AppStyles.style17W800.copyWith(
                                  fontSize: 8.sp,
                                  color: Colors.white,
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
                          textAlign: TextAlign.center,
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
                WhatsappDeleteAllPage(),
                // Page 2: Chats
                WhatsappDeleteChatsPage(),
                // Page 3: Groups
                WhatsappDeleteGroupsPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
