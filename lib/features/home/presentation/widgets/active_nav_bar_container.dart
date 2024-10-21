import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_colors.dart';

class ActiveNavBarContainer extends StatelessWidget {
  const ActiveNavBarContainer({
    super.key,
    required this.image,
    this.height,
  });
  final String image;
  final double? height;
  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.whiteColor,
      ),
      child: SvgPicture.asset(
        image,
        height: height,
        colorFilter: ColorFilter.mode(
          isDark ? Colors.black : const Color(0xffF9D053),
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
