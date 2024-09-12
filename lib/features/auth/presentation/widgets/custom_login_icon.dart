import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import ScreenUtil
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/core/utils/assets.dart';

class CustomLoginIcon extends StatelessWidget {
  const CustomLoginIcon({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 31.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'تسجيل\nالدخول',
            style: AppStyles.style32W700,
          ),
          const SizedBox(),
          InkWell(
            onTap: onTap,
            child: Container(
              constraints: BoxConstraints(
                minHeight: 64.h,
                minWidth: 64.w,
              ),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.loginBtn,
              ),
              child: Center(
                child: SvgPicture.asset(
                  Assets.imagesArrowForwardLoginPage,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
