import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/core/utils/assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_chart/features/whatsapp/presentation/views/whatsapp_choose_detination_pages_view/send_whatsapp/whatsapp_send_to_all_page.dart';
import '../../../../core/utils/app_colors.dart';

class WhatsappPhoneChooseDestinationView extends StatelessWidget {
  const WhatsappPhoneChooseDestinationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                "launchaddwithease".tr(context: context),
                style: AppStyles.style20W800.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
            SvgPicture.asset(
              Assets.imagesRocket,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: const WhatsappPhoneChooseDestinationViewBody(),
    );
  }
}

class WhatsappPhoneChooseDestinationViewBody extends StatefulWidget {
  const WhatsappPhoneChooseDestinationViewBody({super.key});

  @override
  State<WhatsappPhoneChooseDestinationViewBody> createState() =>
      _WhatsappPhoneChooseDestinationViewBodyState();
}

class _WhatsappPhoneChooseDestinationViewBodyState
    extends State<WhatsappPhoneChooseDestinationViewBody> {
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
              "ChooseAdestination(Contacts)".tr(context: context),
              style: AppStyles.style17W800,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 40.h),
          Row(
            children: [
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional.topStart,
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
                            "Contacts".tr(context: context),
                            style: AppStyles.style17W800.copyWith(
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
                WhatsappSendToAllPage(),
                // Page 2: Chats
                // WhatsappSendToChatsPage(),
                // // Page 3: Groups
                // WhatsappSendToGroupsPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
