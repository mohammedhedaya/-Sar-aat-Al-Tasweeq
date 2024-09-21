import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/core/utils/assets.dart';
import 'package:shopping_chart/features/auth/presentation/widgets/auth_text_field.dart';
import 'package:shopping_chart/features/whatsapp/presentation/widgets/launch_text_field.dart';

class ChooseGroupToSendFacbookAdViewBody extends StatelessWidget {
  const ChooseGroupToSendFacbookAdViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: AppColors.navBarColor,
          padding: EdgeInsetsDirectional.only(bottom: 10.h, start: 20.w),
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
              padding: const EdgeInsets.all(34.0),
              child: Column(
                children: [
                  Text(
                    "أختار أحد المجموعات ويتم الإرسال على جميع الحسابات ",
                    style: AppStyles.style16W400,
                  ),
                  SizedBox(height: 19.h),
                  LaunchAdTextField(
                    hintText: 'أكتب رسالتك...',
                    onSuffixIconTap: () {},
                  ),
                  SizedBox(height: 72.h),
                  CustomAuthTextField(
                    fiiledColor: AppColors.whiteColor.withOpacity(0.10),
                    hintText: "أضف الرابط",
                    hintStyle: AppStyles.style12W700.copyWith(
                      color: const Color(0xff9C9C9C),
                    ),
                    suffixIcon: InkWell(
                      onTap: () {},
                      child: Transform.scale(
                        scale: 0.5,
                        child: SvgPicture.asset(
                          Assets.imagesPastLink,
                          colorFilter: const ColorFilter.mode(
                            Colors.tealAccent,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                  SizedBox(height: 19.h),
                  CustomAuthTextField(
                    fiiledColor: AppColors.whiteColor.withOpacity(0.10),
                    hintText: "أضف الموقع",
                    hintStyle: AppStyles.style12W700.copyWith(
                      color: const Color(0xff9C9C9C),
                    ),
                    suffixIcon: InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.location_on_outlined,
                        color: Colors.tealAccent,
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                  SizedBox(height: 25.h),
                  Center(
                    child: InkWell(
                      onTap: () {
                        context.push('/facebookChooseGroupsView');
                      },
                      child: Container(
                        height: 40.h,
                        width: 200.w,
                        padding: EdgeInsets.symmetric(
                            horizontal: 22.w, vertical: 4.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xff00C0CC),
                              Color(0xff006066),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "إختار أحد المجموعات",
                            style: AppStyles.style14W400,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
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
