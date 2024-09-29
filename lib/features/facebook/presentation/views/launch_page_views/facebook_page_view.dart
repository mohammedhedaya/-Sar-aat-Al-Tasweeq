import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_style.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../auth/presentation/widgets/auth_text_field.dart';
import '../../../../whatsapp/presentation/widgets/launch_text_field.dart';

class FacebookPageView extends StatelessWidget {
  const FacebookPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          LaunchAdTextField(
            onChanged: (value) {},
            hintText: "writeyourmessage".tr(context: context),
            onSuffixIconTap: () {},
          ),
          SizedBox(height: 72.h),
          CustomAuthTextField(
            fiiledColor: AppColors.whiteColor.withOpacity(0.10),
            hintText: "addLink".tr(context: context),
            hintStyle: AppStyles.style12W700.copyWith(
              color: const Color(0xffffffff),
            ),
            suffixIcon: Transform.scale(
              scale: 0.5,
              child: SvgPicture.asset(
                Assets.imagesLinkTeal,
              ),
            ),
            onChanged: (value) {},
          ),
          SizedBox(height: 19.h),
          CustomAuthTextField(
            fiiledColor: AppColors.whiteColor.withOpacity(0.10),
            hintText: "addLocation".tr(context: context),
            hintStyle: AppStyles.style12W700.copyWith(
              color: const Color(0xffffffff),
            ),
            suffixIcon: Transform.scale(
              scale: 0.5,
              child: SvgPicture.asset(
                Assets.imagesLocationTeal,
              ),
            ),
            onChanged: (value) {},
          ),
          SizedBox(height: 80.h),
          Center(
            child: InkWell(
              onTap: () {
                context.push('/facebookChooseDestinationView');
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
                    "chooseDestination".tr(context: context),
                    style: AppStyles.style14W400,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
