import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.darkGray,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          Assets.imagesNotifications,
        ),
      ),
      actions: [
        Row(
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'ياهلا,',
                    style: AppStyles.style12W700,
                  ),
                  TextSpan(
                    text: ' فيصل',
                    style: AppStyles.style12W100,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.w),
              child: CircleAvatar(
                radius: 20.r,
                backgroundImage: const AssetImage(
                  Assets.imagesImagePersonInAppBar,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.h);
}
