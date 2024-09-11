import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import ScreenUtil
import 'package:shopping_chart/core/utils/assets.dart';

class CustomLoginIcon extends StatelessWidget {
  const CustomLoginIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          icon: Container(
            width: 64.w, // Use ScreenUtil for width
            height: 64.h, // Use ScreenUtil for height
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
            child: Center(
              child: SvgPicture.asset(
                AppAssets.arrowForwardLoginPage,
                width: 24.w, // Use ScreenUtil for width
                height: 24.h, // Use ScreenUtil for height
              ),
            ),
          ),
          onPressed: () {
            // Define the action for the IconButton
          },
          padding: EdgeInsets.zero,
        ),
        SizedBox(width: 175.w), // Use ScreenUtil for spacing

        // Text
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'تسجيل\nالدخول',
              style: TextStyle(
                fontSize: 32.sp, // Use ScreenUtil for font size
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
