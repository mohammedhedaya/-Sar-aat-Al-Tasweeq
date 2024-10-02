import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomLaunchMenuBtn extends StatelessWidget {
  const CustomLaunchMenuBtn({
    super.key,
    this.onTap,
    required this.icon,
    this.color,
  });

  final void Function()? onTap;
  final String icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: 15.r,
        backgroundColor: Colors.white,
        child: SvgPicture.asset(
          icon,
        ),
      ),
    );
  }
}
