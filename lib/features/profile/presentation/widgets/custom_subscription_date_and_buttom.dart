import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_text_style.dart';

class CustomSubscriptionDateAndBtns extends StatelessWidget {
  const CustomSubscriptionDateAndBtns({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "تاريخ الأشتراك",
                      style: AppStyles.style14W400,
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      "2/2/1445",
                      style: AppStyles.style14W400,
                    ),
                  ],
                ),
                SizedBox(height: 7.h),
                Row(
                  children: [
                    Text(
                      "تاريخ الأنتهاء",
                      style: AppStyles.style14W400,
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      "2/4/1445",
                      style: AppStyles.style14W400,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 24.h),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).push('/profileChangePasswordView');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                child: Text(
                  'تغيير كلمة السر',
                  style: AppStyles.style14W600Profile,
                ),
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).push('/editProfileView');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                child: Text(
                  'تعديـل الحـساب',
                  style: AppStyles.style14W600,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 24.h),
      ],
    );
  }
}
