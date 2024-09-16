import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/core/utils/assets.dart';

class WhatsappGroupsView extends StatelessWidget {
  const WhatsappGroupsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.navBarColor,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Text(
              "وسع نطاق البيع",
              style: AppStyles.style16W400.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(width: 25.w),
            SvgPicture.asset(
              Assets.imagesStartMarktingYourProject,
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
      body: const WhatsappGroupsViewBody(),
    );
  }
}

class WhatsappGroupsViewBody extends StatelessWidget {
  const WhatsappGroupsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: AppColors.navBarColor,
          padding: EdgeInsetsDirectional.only(bottom: 10.h, start: 15.w),
          child: Row(
            children: [
              SvgPicture.asset(
                Assets.imagesWallet,
              ),
              SizedBox(width: 10.w),
              Text(
                "300",
                style: AppStyles.style12W700.copyWith(
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(width: 10.w),
              SvgPicture.asset(
                Assets.imagesJewel,
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Column(
                    children: List.generate(
                      10,
                      (index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 26.h),
                          child: ListTile(
                            onTap: () {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.r),
                              side: const BorderSide(
                                color: Colors.white,
                                width: 1,
                              ),
                            ),
                            title: Text(
                              "مجموعات المملكة العربية السعودية",
                              style: AppStyles.style14W700,
                            ),
                            leading: SvgPicture.asset(
                              Assets.imagesSuadiFlag,
                              height: 44.h,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
