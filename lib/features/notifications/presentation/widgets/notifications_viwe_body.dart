import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import 'notification_item.dart';

class NotificationsViewBody extends StatelessWidget {
  const NotificationsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 31.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          Center(
            child: SvgPicture.asset(
              Assets.imagesNotifications,
              height: 150.h,
              colorFilter: const ColorFilter.mode(
                Color(0xffC8C8C8),
                BlendMode.srcIn,
              ),
            ),
          ),
          SizedBox(height: 20.h),
          InkWell(
            onTap: () {},
            child: Text(
              "deleteAll".tr(context: context),
              style: AppStyles.style14W400.copyWith(
                color: const Color(0xffFD3B3B),
                decoration: TextDecoration.underline,
                decorationColor: const Color(0xffFD3B3B),
              ),
            ),
          ),
          SizedBox(height: 30.h),
          const NotificationItem(),
          const NotificationItem(),
          const NotificationItem(),
          const NotificationItem(),
          const NotificationItem(),
        ],
      ),
    );
  }
}
