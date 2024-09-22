import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_style.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../auth/presentation/widgets/auth_text_field.dart';
import '../../../../whatsapp/presentation/widgets/launch_text_field.dart';

class TelegramPageView extends StatelessWidget {
  const TelegramPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                LaunchAdTextField(
                  onChanged: (value) {},
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
                        Assets.imagesLinkTeal,
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
                    child: Transform.scale(
                      scale: 0.5,
                      child: SvgPicture.asset(
                        Assets.imagesLocationTeal,
                      ),
                    ),
                  ),
                  onChanged: (value) {},
                ),
                SizedBox(height: 25.h),
              ],
            ),
          ),
        ),
        Center(
          child: InkWell(
            onTap: () {
              context.push('/telegramChooseDestinationView');
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
                  "إختار الوجهة",
                  style: AppStyles.style14W400,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
