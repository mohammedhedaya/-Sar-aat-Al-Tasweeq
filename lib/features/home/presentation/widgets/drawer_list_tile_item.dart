import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class DrawerListTileItem extends StatelessWidget {
  const DrawerListTileItem({
    super.key,
    required this.title,
    required this.icon,
    required this.isSelected,
    this.trailing,
    this.onTap,
  });

  final String title;
  final String icon;
  final bool isSelected;
  final Widget? trailing;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListTile(
        tileColor: isSelected ? AppColors.whiteColor : Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.r),
        ),
        onTap: onTap,
        selected: isSelected,
        selectedTileColor:
            isDark ? AppColors.whiteColor : AppColors.yellowLight,
        visualDensity: VisualDensity.compact,
        title: Text(
          title,
          style: isSelected
              ? AppStyles.style14W600.copyWith(color: AppColors.blackColor)
              : AppStyles.style14W600,
        ),
        leading: SvgPicture.asset(
          icon,
          colorFilter: ColorFilter.mode(
            isSelected ? AppColors.blackColor : AppColors.whiteColor,
            BlendMode.srcIn,
          ),
        ),
        trailing: trailing,
      ),
    );
  }
}
