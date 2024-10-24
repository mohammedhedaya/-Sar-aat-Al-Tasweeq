import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class ScanQrCodeViewBody extends StatelessWidget {
  const ScanQrCodeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = AdaptiveTheme.of(context).theme.brightness == Brightness.dark;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 38.w),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 60.h),
              decoration: BoxDecoration(
                color: isDark ? const Color(0xff949494) : AppColors.yellowLight,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Image.asset(
                Assets.imagesQRCode,
              ),
            ),
            SizedBox(height: 42.h),
            Text(
              "scanQR".tr(context: context),
              style: AppStyles.style20W800.copyWith(
                color: isDark ? AppColors.whiteColor : AppColors.blueLight,
              ),
            ),
            SizedBox(height: 48.h),
            InkWell(
              onTap: () {
                context.push("/qrViewInContainer");
              },
              child: Container(
                constraints: BoxConstraints(minHeight: 64.h, minWidth: 64.w),
                padding: EdgeInsets.all(8.r),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:
                      isDark ? AppColors.mixWhiteAndGray : AppColors.blueLight,
                ),
                child: SvgPicture.asset(
                  Assets.imagesCameraIcon,
                  colorFilter: ColorFilter.mode(
                    isDark ? AppColors.blackColor : AppColors.yellowLight,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
            SizedBox(height: 19.h),
            Text(
              "scanQR".tr(context: context),
              style: AppStyles.style20W800.copyWith(
                color: isDark ? AppColors.whiteColor : AppColors.blueLight,
              ),
            ),
            SizedBox(height: 19.h),
          ],
        ),
      ),
    );
  }
}
