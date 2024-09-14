import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';

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
    return ListTile(
      onTap: onTap,
      contentPadding: EdgeInsets.zero,
      title: Text(
        title,
        style: AppStyles.style20W400,
      ),
      leading: Container(
        padding: const EdgeInsets.all(6.0),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.darkGray,
        ),
        child: SvgPicture.asset(
          icon,
        ),
      ),
      trailing: Container(
        padding: const EdgeInsets.all(3.0),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: const Icon(
          Icons.arrow_forward_ios_rounded,
          color: Color(0xffABABAB),
          size: 18,
        ),
      ),
    );
  }
}
