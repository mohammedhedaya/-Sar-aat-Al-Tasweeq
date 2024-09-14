import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
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
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          contentPadding: EdgeInsets.zero,
          dense: true,
          title: Text(
            title,
            style: AppStyles.style20W400,
            textAlign: TextAlign.left,
          ),
          leading: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: const Icon(
              Icons.keyboard_arrow_right_rounded,
            ),
          ),
          trailing: SvgPicture.asset(
            icon,
          ),
        ),
        Divider(
          color: Colors.white,
          thickness: 1.h,
        )
      ],
    );
  }
}
