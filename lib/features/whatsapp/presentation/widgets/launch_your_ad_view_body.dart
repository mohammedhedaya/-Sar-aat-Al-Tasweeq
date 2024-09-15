import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/features/whatsapp/presentation/views/launch_pages_view/chats_page_view.dart';
import 'package:shopping_chart/features/whatsapp/presentation/views/launch_pages_view/delete_page_view.dart';
import 'package:shopping_chart/features/whatsapp/presentation/views/launch_pages_view/phone_directory_page_view.dart';
import 'package:shopping_chart/features/whatsapp/presentation/views/launch_pages_view/whatsapp_page_view.dart';

class LaunchYourAdViewBody extends StatefulWidget {
  const LaunchYourAdViewBody({super.key});

  @override
  State<LaunchYourAdViewBody> createState() => _LaunchYourAdViewBodyState();
}

class _LaunchYourAdViewBodyState extends State<LaunchYourAdViewBody> {
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  _onButtonTapped(0);
                },
                style: ButtonStyle(
                  backgroundColor: _currentPage == 0
                      ? WidgetStateProperty.all(const Color(0xffFFF6F6))
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
                  "واتساب",
                  style: AppStyles.style10W800,
                ),
              ),
              TextButton(
                onPressed: () => _onButtonTapped(1),
                style: ButtonStyle(
                  backgroundColor: _currentPage == 1
                      ? WidgetStateProperty.all(const Color(0xffFFF6F6))
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
                  "دليل الهاتف",
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
                  "حذف",
                  style: AppStyles.style10W800
                      .copyWith(color: AppColors.whiteColor),
                ),
              ),
              TextButton(
                onPressed: () => _onButtonTapped(3),
                style: ButtonStyle(
                  backgroundColor: _currentPage == 3
                      ? WidgetStateProperty.all(const Color(0xffFFF6F6))
                      : WidgetStateProperty.all(const Color(0xffA4A4A4)),
                  shape: WidgetStateProperty.all(
                    const StadiumBorder(),
                  ),
                  visualDensity: VisualDensity.compact,
                  shadowColor: _currentPage == 3
                      ? WidgetStateProperty.all(Colors.white.withOpacity(0.25))
                      : WidgetStateProperty.all(Colors.transparent),
                  elevation: WidgetStateProperty.all(4),
                ),
                child: Text(
                  "الدردشات",
                  style: AppStyles.style10W800,
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
                // Page 1: WhatsApp
                WhatsappPageView(),
                // Page 2: Phone Directory
                PhoneDirectoryPageView(),
                // Page 3: Deleted
                DeletePageView(),
                // Page 4: Chats
                ChatsPageView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
