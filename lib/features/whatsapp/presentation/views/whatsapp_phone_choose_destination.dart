import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/core/utils/assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_chart/features/whatsapp/presentation/widgets/custom_progress_bar_text.dart';
import 'package:shopping_chart/features/whatsapp/presentation/widgets/custom_show_dialog.dart';
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
    final isDark =
        AdaptiveTheme.of(context).theme.brightness == Brightness.dark;
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
                            ? isDark
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
                            "Contacts".tr(context: context),
                            style: AppStyles.style17W800.copyWith(
                              color: _currentPage == 0
                                  ? isDark
                                      ? const Color(0xff2F2F2F)
                                      : Colors.white
                                  : Colors.white,
                            ),
                          ),
                          Text(
                            "4000",
                            style: AppStyles.style17W800.copyWith(
                              color: isDark
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
                WhatsappContactsSendToAllPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WhatsappContactsSendToAllPage extends StatefulWidget {
  const WhatsappContactsSendToAllPage({super.key});

  @override
  State<WhatsappContactsSendToAllPage> createState() =>
      _WhatsappContactsSendToAllPageState();
}

class _WhatsappContactsSendToAllPageState
    extends State<WhatsappContactsSendToAllPage> {
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
                    color: isDark ? Colors.white : const Color(0xff937B31),
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
            context.push('/whatsappContactsSendingView');
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
                        Color(0xFFF9D053),
                        Color(0xFF937B31),
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
            ),
            child: Center(
              child: Text(
                "send".tr(context: context),
                style: AppStyles.style14W400.copyWith(
                  color: isDark ? AppColors.whiteColor : Colors.white,
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

class WhatsappContactsSendingView extends StatelessWidget {
  const WhatsappContactsSendingView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return Scaffold(
      body: Container(
        decoration: isDark
              ? null
              : const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              Assets.imagesFrameBGLight,
            ),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter,
          ),
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: AspectRatio(
                aspectRatio: 1.4,
                child: Image.asset(
                  Assets.imagesApplogo,
                ),
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: isDark ? const Color(0xffABABAB) : AppColors.blueLight,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.r),
                    topRight: Radius.circular(25.r),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      "sending".tr(context: context),
                      style: AppStyles.style46W900.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 60.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircularPercentIndicator(
                          radius: 55.0,
                          lineWidth: 6.0.w,
                          percent: 0.70,
                          backgroundColor: isDark
                              ? AppColors.blackColor
                              : AppColors.whiteColor,
                          progressColor: isDark
                              ? AppColors.whiteColor
                              : AppColors.yellowLight,
                          reverse: true,
                          center: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "6days".tr(context: context),
                                style: AppStyles.style14W800.copyWith(
                                  color: isDark
                                      ? AppColors.blackColor
                                      : AppColors.yellowLight,
                                  fontSize: 23.sp,
                                ),
                              ),
                              Text(
                                "remaining".tr(context: context),
                                style: AppStyles.style19W900.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          flex: 2,
                          child: Container(
                            padding: const EdgeInsets.all(25),
                            decoration: BoxDecoration(
                              color: isDark
                                  ? const Color(0xff727272)
                                  : AppColors.yellowLight,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Column(
                              children: [
                                CustomProgressBarAndText(
                                  label:
                                      "NumbersOfContacts".tr(context: context),
                                  value: "300",
                                  progress: 0.0,
                                ),
                                SizedBox(height: 23.h),
                                CustomProgressBarAndText(
                                  label: "Allowednumberoftransmissions:"
                                      .tr(context: context),
                                  value: "2000",
                                  progress: 0.5,
                                  textcolor: const Color(0xffE21D1D),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.25),
                    InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          barrierColor:
                              const Color(0xffFFF9F9).withOpacity(0.33),
                          builder: (context) {
                            return CustomShowDialog(
                              onTap: () {
                                context.pop();
                                context.pop();
                                context.pop();
                              },
                              image: Assets.imagesSuccessgreenicon,
                              textButton: "next".tr(context: context),
                              content: Text(
                                "SentSuccessfully".tr(context: context),
                                style: AppStyles.style15W900
                                    .copyWith(color: AppColors.whiteColor),
                                textAlign: TextAlign.center,
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        height: 40.h,
                        width: 198.w,
                        padding: EdgeInsets.symmetric(
                          horizontal: 22.w,
                          vertical: 4.h,
                        ),
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
                                    Color(0xFFF9D053),
                                    Color(0xFF937B31),
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                        ),
                        child: Center(
                          child: Text(
                            "cancel".tr(context: context),
                            style: AppStyles.style14W400.copyWith(
                              color: AppColors.whiteColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
