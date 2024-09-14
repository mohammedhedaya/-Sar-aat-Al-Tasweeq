import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/assets.dart';
import 'package:shopping_chart/features/contact_us/presentation/widgets/contact_us_item.dart';

class ContactUsViewBody extends StatelessWidget {
  const ContactUsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          flex: 1,
          child: SizedBox(),
        ),
        Expanded(
          flex: 3,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 35.w),
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xffABABAB),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.r),
                topRight: Radius.circular(25.r),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                ContactUsItem(
                  onTap: () {},
                  title: "المحادثة عبر الواتساب",
                  icon: Assets.imagesWhatsapp,
                ),
                const Divider(
                  color: AppColors.whiteColor,
                  height: 1,
                  thickness: 1,
                ),
                ContactUsItem(
                  onTap: () {},
                  title: "الأتصال عبر الهاتف",
                  icon: Assets.imagesPhone,
                ),
                SizedBox(height: 25.h),
                Image.asset(
                  Assets.imagesApplogo,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
