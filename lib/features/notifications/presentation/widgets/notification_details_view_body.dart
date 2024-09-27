import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class NotificationsDetailsViewBody extends StatelessWidget {
  const NotificationsDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              Assets.imagesHomeBackground,
            ),
            opacity: 0.45,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 36.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Text(
                "Admin".tr(context: context),
                style: AppStyles.style15W800,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              Container(
                padding: EdgeInsets.all(10.r),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.10),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Text(
                  "alsalamealaykum".tr(context: context),
                  style: AppStyles.style36W400,
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.06),
              Image.asset(
                Assets.imagesImageSea,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}
