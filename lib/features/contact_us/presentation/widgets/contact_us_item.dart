import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class ContactUsItem extends StatelessWidget {
  const ContactUsItem({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
  });
  final void Function()? onTap;
  final String title;
  final String icon;
  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return ListTile(
      onTap: onTap,
      contentPadding: EdgeInsets.zero,
      visualDensity: VisualDensity.compact,
      title: Text(
        title,
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
          icon,
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
          color: isDark ? Colors.white : AppColors.blueLight,
        ),
        child: Icon(
          Icons.arrow_forward_ios_rounded,
          size: 18,
          color: isDark ? AppColors.blackColor : AppColors.whiteColor,
        ),
      ),
    );
  }
}
