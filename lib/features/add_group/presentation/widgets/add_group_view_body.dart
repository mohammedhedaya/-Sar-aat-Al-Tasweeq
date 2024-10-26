import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class AddGroupViewBody extends StatelessWidget {
  const AddGroupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return Padding(
      padding: const EdgeInsets.all(33.0),
      child: Column(
        children: [
          Image.asset(
            Assets.imagesApplogo,
          ),
          ListTile(
            onTap: () {
              context.push('/addWhatsappGroupView');
            },
            contentPadding: EdgeInsets.zero,
            visualDensity: VisualDensity.compact,
            title: Text(
              "AddWhatsappGroup".tr(context: context),
              style: AppStyles.style20W400.copyWith(
                color: isDark ? AppColors.whiteColor : AppColors.blueLight,
              ),
            ),
            leading: Container(
              padding: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isDark ? AppColors.darkGray : null,
              ),
              child: SvgPicture.asset(
                Assets.imagesAddWhatsappgroup,
                colorFilter: ColorFilter.mode(
                  isDark ? AppColors.whiteColor : AppColors.yellowLight,
                  BlendMode.srcIn,
                ),
              ),
            ),
            trailing: Container(
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isDark ? AppColors.whiteColor : AppColors.blueLight,
              ),
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18,
                color: isDark ? AppColors.blackColor : AppColors.whiteColor,
              ),
            ),
          ),
          Divider(
            color: isDark ? Colors.white : AppColors.blueLight,
            thickness: 1,
            height: 1.h,
          ),
          ListTile(
            onTap: () {
              context.push('/addTelegramGroupView');
            },
            contentPadding: EdgeInsets.zero,
            visualDensity: VisualDensity.compact,
            title: Text(
              "AddTelegramGroup".tr(context: context),
              style: AppStyles.style20W400.copyWith(
                color: isDark ? AppColors.whiteColor : AppColors.blueLight,
              ),
            ),
            leading: Container(
              padding: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isDark ? AppColors.darkGray : null,
              ),
              child: SvgPicture.asset(
                Assets.imagesAddtelegramgroup,
                colorFilter: ColorFilter.mode(
                  isDark ? AppColors.whiteColor : AppColors.yellowLight,
                  BlendMode.srcIn,
                ),
              ),
            ),
            trailing: Container(
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isDark ? AppColors.whiteColor : AppColors.blueLight,
              ),
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18,
                color: isDark ? AppColors.blackColor : AppColors.whiteColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
