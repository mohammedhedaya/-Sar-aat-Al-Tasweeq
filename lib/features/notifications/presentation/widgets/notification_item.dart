import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return Padding(
      padding: EdgeInsets.only(bottom: 21.h),
      child: ListTile(
        onTap: () {
          context.push('/notificationsDetailsView');
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.r),
        ),
        tileColor: isDark ? const Color(0xffD3D3D3) : AppColors.blueLight,
        title: Text(
          "adminsentyoumessage".tr(context: context),
          style: AppStyles.style15W900.copyWith(
            color: isDark
                ? AppColors.navBarColor.withOpacity(0.91)
                : AppColors.whiteColor.withOpacity(0.91),
          ),
        ),
        trailing: InkWell(
          onTap: () {},
          child: SvgPicture.asset(
            Assets.imagesDeleteicon,
          ),
        ),
        leading: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isDark ? AppColors.darkGray : null,
            gradient: isDark
                ? null
                : const LinearGradient(
                    colors: [
                      AppColors.yellowLight,
                      Color(0xff937B31),
                    ],
                  ),
          ),
          child: SvgPicture.asset(
            Assets.imagesNotifications,
            height: 25.h,
            colorFilter: const ColorFilter.mode(
              Colors.white,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}
