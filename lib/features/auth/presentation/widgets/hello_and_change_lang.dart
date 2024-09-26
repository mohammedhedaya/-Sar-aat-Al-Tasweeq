import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_text_style.dart';

class HelloAndChangeLang extends StatelessWidget {
  const HelloAndChangeLang({super.key});

  @override
  Widget build(BuildContext context) {
    context.locale;
    return Positioned(
      top: 35.h,
      left: 0,
      right: 0,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "hello".tr(context: context),
              style: AppStyles.style46W400,
            ),
            InkWell(
              onTap: () async {
                if (context.locale == const Locale('en')) {
                  await EasyLocalization.of(context)!
                      .setLocale(const Locale('ar'));
                } else {
                  await EasyLocalization.of(context)!
                      .setLocale(const Locale('en'));
                }
                // setState(() {});
              },
              child: Text(
                context.locale == const Locale('en') ? "العربية" : "English",
                style: AppStyles.style23W700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
