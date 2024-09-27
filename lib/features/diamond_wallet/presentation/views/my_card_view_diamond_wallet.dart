import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import '../../../auth/presentation/widgets/auth_btn.dart';

class MyCardViewDiamondWallet extends StatefulWidget {
  const MyCardViewDiamondWallet({super.key});

  @override
  State<MyCardViewDiamondWallet> createState() =>
      _MyCardViewDiamondWalletState();
}

class _MyCardViewDiamondWalletState extends State<MyCardViewDiamondWallet> {
  int? selectedCardIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.white,
            ),
          ),
        ],
        elevation: 0,
        title: Text(
          "cards".tr(context: context),
          style: AppStyles.style20W800,
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 23.w),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              Assets.imagesHomeBackground,
            ),
            alignment: Alignment.bottomCenter,
            opacity: 0.26,
          ),
        ),
        child: selectedCardIndex != null
            ? _buildExpandedCard(
                selectedCardIndex!,
                [
                  const Color(0XFFE6DDFF),
                  const Color(0XFF6F45E9),
                  const Color(0xff270685)
                ][selectedCardIndex!],
              )
            : Stack(
                children: [
                  _buildCard(0, const Color(0XFFE6DDFF), 0.075),
                  _buildCard(1, const Color(0XFF6F45E9), 0.135),
                  _buildCard(2, const Color(0xff270685), 0.195),
                ],
              ),
      ),
    );
  }

  Widget _buildCard(int index, Color color, double topPosition) {
    return Positioned(
      top: MediaQuery.of(context).size.height * topPosition,
      left: 0,
      right: 0,
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedCardIndex = index;
          });
        },
        child: Container(
          height: 170.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                right: 0,
                child: SvgPicture.asset(
                  Assets.imagesEllipse10,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: SvgPicture.asset(
                  Assets.imagesEllipse11,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "****3245",
                          style: AppStyles.style12W600.copyWith(
                            color: color == const Color(0XFFE6DDFF)
                                ? AppColors.blackColor
                                : AppColors.whiteColor,
                          ),
                        ),
                        Text(
                          "Faisal Abd El Aziz",
                          style: AppStyles.style12W600.copyWith(
                            color: color == const Color(0XFFE6DDFF)
                                ? AppColors.blackColor
                                : AppColors.whiteColor,
                          ),
                        ),
                      ],
                    ),
                    SvgPicture.asset(
                      Assets.imagesRssLine,
                      colorFilter: ColorFilter.mode(
                        color == const Color(0XFFE6DDFF)
                            ? AppColors.blackColor
                            : AppColors.whiteColor,
                        BlendMode.srcIn,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExpandedCard(int index, Color color) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.075),
        Align(
          alignment: Alignment.centerRight,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                setState(() {
                  selectedCardIndex = null;
                });
              },
              child: const Icon(
                Icons.keyboard_arrow_right_rounded,
              ),
            ),
          ),
        ),
        SizedBox(height: 32.h),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            "an_amount_of_400_riyal_will_be_deducted_from_your_card"
                .tr(context: context),
            style: AppStyles.style12W600,
          ),
        ),
        SizedBox(height: 32.h),
        Container(
          height: 170.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                right: 0,
                child: SvgPicture.asset(
                  Assets.imagesEllipse10,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: SvgPicture.asset(
                  Assets.imagesEllipse11,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "****3245",
                          style: AppStyles.style12W600.copyWith(
                            color: color == const Color(0XFFE6DDFF)
                                ? AppColors.blackColor
                                : AppColors.whiteColor,
                          ),
                        ),
                        Text(
                          "Faisal Abd El Aziz",
                          style: AppStyles.style12W600.copyWith(
                            color: color == const Color(0XFFE6DDFF)
                                ? AppColors.blackColor
                                : AppColors.whiteColor,
                          ),
                        ),
                      ],
                    ),
                    SvgPicture.asset(
                      Assets.imagesRssLine,
                      colorFilter: ColorFilter.mode(
                        color == const Color(0XFFE6DDFF)
                            ? AppColors.blackColor
                            : AppColors.whiteColor,
                        BlendMode.srcIn,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 58.h),
        Material(
          color: Colors.transparent,
          child: CustomAuthBtn(
            onPressed: () {
              context.push("/purchaseCompletedSuccessfully");
            },
            text: "pay".tr(context: context),
          ),
        ),
      ],
    );
  }
}
