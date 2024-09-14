import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/core/utils/assets.dart';
import 'package:shopping_chart/features/notifications/presentation/widgets/notification_item.dart';

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
              "مسح الكل",
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
