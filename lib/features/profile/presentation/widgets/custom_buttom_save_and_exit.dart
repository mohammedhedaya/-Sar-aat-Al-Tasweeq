import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_text_style.dart';

class CustomButtomSaveAndExit extends StatelessWidget {
  const CustomButtomSaveAndExit({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () => context.pop(),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(10.r),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xff52B850),
                    Color(0xff245223),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Center(
                child: Text(
                  "save".tr(context: context),
                  style: AppStyles.style14W600,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 11.w),
        Expanded(
          child: InkWell(
            onTap: () => context.pop(),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(10.r),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xff741A1A),
                    Color(0xffDA3131),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Center(
                child: Text(
                  "cancel".tr(context: context),
                  style: AppStyles.style14W600,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
