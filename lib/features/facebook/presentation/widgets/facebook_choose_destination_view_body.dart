import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../whatsapp/presentation/widgets/destination_check_box.dart';

class FacebookChooseDestinationViewBody extends StatefulWidget {
  const FacebookChooseDestinationViewBody({super.key});

  @override
  State<FacebookChooseDestinationViewBody> createState() =>
      _FacebookChooseDestinationViewBodyState();
}

class _FacebookChooseDestinationViewBodyState
    extends State<FacebookChooseDestinationViewBody> {
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
              "أختر وجهة ( الفيسبوك )",
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
                          "الكل",
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
                          "المتابعين",
                          style: _currentPage == 1
                              ? AppStyles.style17W800.copyWith(
                                  color: const Color(0xff2F2F2F),
                                )
                              : AppStyles.style17W800,
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
                          "المتابعون",
                          style: _currentPage == 2
                              ? AppStyles.style17W800.copyWith(
                                  color: const Color(0xff2F2F2F),
                                )
                              : AppStyles.style17W800,
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
                FaceSendToAllPage(),
                // Page 2: My Followers
                FaceendToMyFollowrsPage(),
                // Page 3: My Followings
                FaceSendToMyFollowingsPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FaceSendToAllPage extends StatelessWidget {
  const FaceSendToAllPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 25.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "تحديد الكل",
                        style: AppStyles.style13W600,
                      ),
                      const ChooseDestinationCheckbox(),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Column(
                    children: List.generate(
                      10,
                      (index) => Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "فيصل عبدالعزيز",
                                style: AppStyles.style13W600,
                              ),
                              const ChooseDestinationCheckbox(),
                            ],
                          ),
                          Divider(
                            color: AppColors.whiteColor,
                            thickness: 1,
                            endIndent: 25.w,
                            indent: 25.w,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            context.push('/facebookSendingView');
          },
          child: Container(
            height: 40.h,
            width: 200.w,
            padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 4.h),
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
                "قم بالإرسال",
                style: AppStyles.style14W400,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class FaceendToMyFollowrsPage extends StatelessWidget {
  const FaceendToMyFollowrsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 25.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "تحديد الكل",
                        style: AppStyles.style13W600,
                      ),
                      const ChooseDestinationCheckbox(),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Column(
                    children: List.generate(
                      10,
                      (index) => Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "فيصل عبدالعزيز",
                                style: AppStyles.style13W600,
                              ),
                              const ChooseDestinationCheckbox(),
                            ],
                          ),
                          Divider(
                            color: AppColors.whiteColor,
                            thickness: 1,
                            endIndent: 25.w,
                            indent: 25.w,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            context.push('/facebookSendingView');
          },
          child: Container(
            height: 40.h,
            width: 200.w,
            padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 4.h),
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
                "قم بالإرسال",
                style: AppStyles.style14W400,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class FaceSendToMyFollowingsPage extends StatelessWidget {
  const FaceSendToMyFollowingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 25.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "تحديد الكل",
                        style: AppStyles.style13W600,
                      ),
                      const ChooseDestinationCheckbox(),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Column(
                    children: List.generate(
                      10,
                      (index) => Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "فيصل عبدالعزيز",
                                style: AppStyles.style13W600,
                              ),
                              const ChooseDestinationCheckbox(),
                            ],
                          ),
                          Divider(
                            color: AppColors.whiteColor,
                            thickness: 1,
                            endIndent: 25.w,
                            indent: 25.w,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            context.push('/facebookSendingView');
          },
          child: Container(
            height: 40.h,
            width: 200.w,
            padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 4.h),
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
                "قم بالإرسال",
                style: AppStyles.style14W400,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
