import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 21.h),
      child: ListTile(
        onTap: () {
          context.push('/notificationsDetailsView');
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.r),
        ),
        tileColor: const Color(0xffD3D3D3),
        title: Text(
          "أرسل إليك الأدمن رسالة",
          style: AppStyles.style15W900.copyWith(
            color: AppColors.navBarColor.withOpacity(0.91),
          ),
        ),
        trailing: InkWell(
          onTap: () {},
          child: SvgPicture.asset(
            Assets.imagesDeleteicon,
          ),
        ),
        leading: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.darkGray,
          ),
          child: SvgPicture.asset(
            Assets.imagesNotifications,
            height: 25.h,
            colorFilter: const ColorFilter.mode(
              Colors.white,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}
