import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_text_style.dart';

class CustomSubscriptionDate extends StatelessWidget {
  const CustomSubscriptionDate({super.key});

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
                SizedBox(height: 10.h),
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
        SizedBox(height: 30.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).push('/changePassword');
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
                backgroundColor: Colors.white, // Background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
              child: Text(
                'تغيير كلمة السر',
                style: AppStyles.style14W600Profile,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).push('/editProfile');
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
                backgroundColor: Colors.teal, // Background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
              child: Text(
                'تـعـديـل الـحـسـاب',
                style: AppStyles.style14W600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
