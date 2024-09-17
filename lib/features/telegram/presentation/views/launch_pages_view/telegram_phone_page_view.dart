import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/core/utils/assets.dart';
import 'package:shopping_chart/features/auth/presentation/widgets/auth_text_field.dart';
import 'package:shopping_chart/features/whatsapp/presentation/widgets/launch_text_field.dart';

class TelegramPhoneDirectoryPageView extends StatelessWidget {
  const TelegramPhoneDirectoryPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
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
                context.push('/phoneChooseTheDestinationView');
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
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Center(
                  child: Text(
                    "إختار الوجهة",
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
