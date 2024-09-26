import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../views/whatsapp_choose_detination_pages_view/delete_whatsapp/whatsapp_delete%20chats_page.dart';
import '../views/whatsapp_choose_detination_pages_view/delete_whatsapp/whatsapp_delete_all_page.dart';
import '../views/whatsapp_choose_detination_pages_view/delete_whatsapp/wjatsapp_delete_gropus_page.dart';

class DeleteChooseTheDestinationViewBody extends StatefulWidget {
  const DeleteChooseTheDestinationViewBody({super.key});

  @override
  State<DeleteChooseTheDestinationViewBody> createState() =>
      _DeleteChooseTheDestinationViewBodyState();
}

class _DeleteChooseTheDestinationViewBodyState
    extends State<DeleteChooseTheDestinationViewBody> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _onButtonTapped(int index) {
    setState(() {
      _currentPage = index;
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
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
              "أختر الوجهة (حذف الواتساب)",
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
                          ? AppColors.whiteColor
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
                          "حذف الكل",
                          style: AppStyles.style10W800.copyWith(
                            color: _currentPage == 0
                                ? const Color(0xff2F2F2F)
                                : Colors.white,
                          ),
                        ),
                        Text(
                          "4000",
                          style: AppStyles.style17W800.copyWith(
                            color: const Color(0xff2F2F2F),
                            fontWeight: FontWeight.w200,
                          ),
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
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: _currentPage == 1
                          ? AppColors.whiteColor
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
                          "حذف الدردشات",
                          style: _currentPage == 1
                              ? AppStyles.style10W800.copyWith(
                                  color: const Color(0xff2F2F2F),
                                )
                              : AppStyles.style10W800,
                        ),
                        Text(
                          "1000",
                          style: AppStyles.style17W800.copyWith(
                            color: const Color(0xff2F2F2F),
                            fontWeight: FontWeight.w200,
                          ),
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
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: _currentPage == 2
                          ? AppColors.whiteColor
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
                          "حذف المجموعات",
                          style: _currentPage == 2
                              ? AppStyles.style10W800.copyWith(
                                  color: const Color(0xff2F2F2F),
                                )
                              : AppStyles.style10W800,
                        ),
                        Text(
                          "3000",
                          style: AppStyles.style17W800.copyWith(
                            color: const Color(0xff2F2F2F),
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
