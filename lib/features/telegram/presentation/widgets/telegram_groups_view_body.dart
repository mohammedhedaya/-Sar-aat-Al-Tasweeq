import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/core/utils/assets.dart';

class TelegramGroupsViewBody extends StatelessWidget {
  const TelegramGroupsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 37.h),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Padding(
              padding: EdgeInsetsDirectional.only(start: 13.w),
              child: Text(
                'وسع نطاق البيع',
                style: AppStyles.style21W900.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          SizedBox(height: 37.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: GridView.count(
              crossAxisCount: 2,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 39.w,
              mainAxisSpacing: 24.h,
              shrinkWrap: true,
              children: [
                for (int i = 0; i < 12; i++)
                  InkWell(
                    onTap: () {
                      context.push("/telegramGroupsDetailsView");
                    },
                    child: Container(
                      padding: EdgeInsets.only(
                        left: 5.w,
                        right: 5.w,
                        bottom: 20.h,
                        top: 22.h,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        border: Border.all(
                          color: Colors.white,
                          width: 1,
                        ),
                      ),
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            Assets.imagesSuadiFlag,
                            height: 41.h,
                          ),
                          SizedBox(height: 20.h),
                          Text(
                            "مجموعات المملكة العربية السعودية",
                            style: AppStyles.style13W600,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 25.h),
        ],
      ),
    );
  }
}
