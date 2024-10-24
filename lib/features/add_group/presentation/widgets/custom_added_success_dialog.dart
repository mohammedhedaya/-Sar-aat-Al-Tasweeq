import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';

import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class CustomAddedSuccesDialog extends StatelessWidget {
  const CustomAddedSuccesDialog({
    super.key,
    required this.text,
    this.style,
  });
  final String text;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.r),
      ),
      title: SvgPicture.asset(
        Assets.imagesSuccessgreenicon,
      ),
      content: Text(
        text,
        style: style ??
            AppStyles.style21W900.copyWith(
              color: AppColors.whiteColor,
            ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
