import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class CustomPaymentMethodItem extends StatelessWidget {
  const CustomPaymentMethodItem({
    super.key,
    this.onTap,
    required this.title,
    required this.icon,
  });
  final void Function()? onTap;
  final String title;
  final String icon;
  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          contentPadding: EdgeInsets.zero,
          dense: true,
          title: Text(
            title,
            style: AppStyles.style20W400.copyWith(
              color: isDark ? Colors.white : AppColors.blueLight,
            ),
            textAlign: TextAlign.left,
          ),
          leading: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isDark ? Colors.white : AppColors.blueLight,
            ),
            child: Icon(
              Icons.keyboard_arrow_right_rounded,
              color: isDark ? Colors.black : Colors.white,
            ),
          ),
          trailing: SvgPicture.asset(
            icon,
            colorFilter: ColorFilter.mode(
              isDark ? Colors.white : AppColors.blueLight,
              BlendMode.srcIn,
            ),
          ),
        ),
        Divider(
          color: isDark ? Colors.white : AppColors.blueLight,
          thickness: 1.h,
        )
      ],
    );
  }
}
