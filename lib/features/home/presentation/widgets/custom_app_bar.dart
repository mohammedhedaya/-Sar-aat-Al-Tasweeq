import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.darkGray,
      elevation: 0,
      leading: Stack(
        children: [
          SizedBox(
            width: 40.w,
            height: 40.h,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                size: 40.sp,
                color: AppColors.whiteColor,
              ),
            ),
          ),
          Positioned(
            right: 11.w,
            top: 2.h,
            child: Container(
              padding: EdgeInsets.all(5.w),
              decoration: const BoxDecoration(
                color: AppColors.redColor,
                shape: BoxShape.circle,
              ),
              child: Text(
                '5',
                style: AppStyles.style12W100.copyWith(fontSize: 12.sp),
              ),
            ),
          ),
        ],
      ),
      actions: [
        Row(
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'يا هلا ,',
                    style: AppStyles.style18W700.copyWith(fontSize: 18.sp),
                  ),
                  TextSpan(
                    text: ' فيصل',
                    style: AppStyles.style12W100.copyWith(fontSize: 12.sp),
                  ),
                ],
              ),
            ),
            SizedBox(width: 8.w),
            Padding(
              padding: EdgeInsets.all(8.w),
              child: CircleAvatar(
                radius: 20.r,
                backgroundImage: const AssetImage(
                  Assets.imagePersonInAppBar,
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
