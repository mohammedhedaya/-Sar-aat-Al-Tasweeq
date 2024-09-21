import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/core/utils/assets.dart';
import 'package:shopping_chart/features/auth/presentation/widgets/auth_text_field.dart';
import 'package:shopping_chart/features/whatsapp/presentation/widgets/launch_ad_choose_group_view_body.dart.dart';
import 'package:shopping_chart/features/whatsapp/presentation/widgets/launch_text_field.dart';

class ChooseTelegramGroupToSendViewBody extends StatelessWidget {
  const ChooseTelegramGroupToSendViewBody({super.key});

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
                "400",
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
              padding: const EdgeInsets.all(33.0),
              child: Column(
                children: [
                  LaunchAdTextField(
                    onChanged: (value) {},
                    hintText: "اكتب رسالتك",
                    onSuffixIconTap: () {},
                  ),
                  SizedBox(height: 72.h),
                  const CustomChooseGroupPastLinkTextField(),
                  SizedBox(height: 19.h),
                  CustomAuthTextField(
                    fiiledColor: AppColors.whiteColor.withOpacity(0.10),
                    hintText: "أضف الموقع",
                    hintStyle: AppStyles.style12W700.copyWith(
                      color: const Color(0xff9C9C9C),
                    ),
                    suffixIcon: Transform.scale(
                      scale: 0.5,
                      child: SvgPicture.asset(
                        Assets.imagesLocationTeal,
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 20.h),
          child: InkWell(
            onTap: () {
              context.push('/chooseTelegramGroupToSendView1');
            },
            child: Container(
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
              child: Text(
                "إختار أحد القنوات",
                style: AppStyles.style14W400.copyWith(
                  color: AppColors.whiteColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
