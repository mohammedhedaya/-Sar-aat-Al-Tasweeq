import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.scaffoldKey});
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // backgroundColor: AppColors.darkGray,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      leadingWidth: 150.w,
      leading: Row(
        children: [
          InkWell(
            onTap: () {
              scaffoldKey.currentState?.openDrawer();
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
                    text: 'ياهلا,',
                    style: AppStyles.style12W700,
                  ),
                  TextSpan(
                    text: ' فيصل',
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
        IconButton(
          onPressed: () {
            context.push('/notificationsView');
          },
          icon: SvgPicture.asset(
            Assets.imagesNotifications,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.h);
}
