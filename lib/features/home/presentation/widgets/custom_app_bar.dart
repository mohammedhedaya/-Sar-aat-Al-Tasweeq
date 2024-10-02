import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class CustomHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      leadingWidth: 150.w,
      leading: Row(
        children: [
          InkWell(
            onTap: () {
              context.push('/profileView');
            },
            child: Padding(
              padding: EdgeInsets.all(8.w),
              child: CircleAvatar(
                radius: 20.r,
                backgroundImage: const AssetImage(
                  Assets.imagesImagePersonInAppBar,
                ),
              ),
            ),
          ),
          Expanded(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "hi".tr(context: context),
                    style: AppStyles.style12W700,
                  ),
                  TextSpan(
                    text: 'fiesl'.tr(context: context),
                    style: AppStyles.style12W100,
                  ),
                ],
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      actions: [
        Stack(
          children: [
            IconButton(
              onPressed: () {
                context.push('/notificationsView');
              },
              icon: SvgPicture.asset(
                Assets.imagesNotifications,
              ),
            ),
            CircleAvatar(
              radius: 12.r,
              backgroundColor: AppColors.redColor,
              child: Text(
                '5',
                style: AppStyles.style12W600.copyWith(
                  color: AppColors.whiteColor,
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
