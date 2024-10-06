import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class PackageDetailsItem extends StatelessWidget {
  const PackageDetailsItem({
    super.key,
    required this.title,
    required this.logo,
  });
  final String title;
  final String logo;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "•",
          style: AppStyles.style14W400.copyWith(
            color: AppColors.whiteColor,
          ),
        ),
        SizedBox(width: 5.w),
        SvgPicture.asset(
          logo,
          height: 20.h,
        ),
        SizedBox(width: 5.w),
        Text(
          title,
          style: AppStyles.style14W400.copyWith(
            color: AppColors.whiteColor,
          ),
        ),
      ],
    );
  }
}
