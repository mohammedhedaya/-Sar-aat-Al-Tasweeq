import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/app_text_style.dart';

class CustomLaunchDrawerItem extends StatelessWidget {
  const CustomLaunchDrawerItem({
    super.key,
    required this.title,
    required this.image,
    this.onTap,
  });
  final void Function()? onTap;
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 44.h),
      child: ListTile(
        onTap: onTap,
        contentPadding: EdgeInsetsDirectional.only(start: 7.w),
        visualDensity: VisualDensity.compact,
        tileColor: const Color(0xff7D7D7D),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.r),
        ),
        title: Text(
          title,
          style: AppStyles.style14W400,
        ),
        leading: SvgPicture.asset(
          image,
        ),
      ),
    );
  }
}
