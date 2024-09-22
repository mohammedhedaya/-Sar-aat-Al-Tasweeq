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
    return ListTile(
      onTap: onTap,
      contentPadding: EdgeInsetsDirectional.only(start: 7.w, end: 3.w),
      tileColor: const Color(0xff7D7D7D),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.circular(5.r),
      ),
      title: Text(
        title,
        style: AppStyles.style14W400,
      ),
      leading: SvgPicture.asset(
        image,
      ),
    );
  }
}
