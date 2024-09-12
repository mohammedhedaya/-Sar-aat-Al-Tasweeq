import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class CustomIncludeEmail extends StatelessWidget {
  const CustomIncludeEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "الإيميل",
                style: AppStyles.style12W400.copyWith(color: AppColors.whiteColor, fontSize: 12),
                textAlign: TextAlign.right,
              ),
              SizedBox(height: 8.h),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 60.h,
                  decoration: const BoxDecoration(
                    color: AppColors.dimGray,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Center(
                    child: Text(
                      'faisal_abdelaziz@yahoo.com',
                      style: AppStyles.style18W400,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
