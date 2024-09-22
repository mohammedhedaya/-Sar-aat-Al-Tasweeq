import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_style.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../whatsapp/presentation/widgets/custom_show_dialog.dart';
import '../../../../whatsapp/presentation/widgets/destination_check_box.dart';

class XUserDetailsSelectFollowingsPage extends StatelessWidget {
  const XUserDetailsSelectFollowingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "تحديد الكل",
                      style: AppStyles.style13W600,
                    ),
                    const ChooseDestinationCheckbox(),
                  ],
                ),
                SizedBox(height: 27.h),
                Column(
                  children: List.generate(
                    10,
                    (index) => Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "فيصل عبدالعزيز",
                              style: AppStyles.style13W600,
                            ),
                            const ChooseDestinationCheckbox(),
                          ],
                        ),
                        Divider(
                          color: AppColors.whiteColor,
                          thickness: 1,
                          endIndent: 25.w,
                          indent: 25.w,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 59.h),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              barrierColor: const Color(0xffFFF9F9).withOpacity(0.33),
              builder: (context) {
                return CustomShowDialog(
                  onTap: () {
                    context.push('/sendingXAdToFollowrsView');
                  },
                  image: Assets.imagesRechargeWallet,
                  textButton: "إعادة الشحن",
                  content: Text(
                    "العدد المسموح الأرسال عليه 400 شخص فقط الرجاء شحن المزيد من الماسات",
                    style: AppStyles.style15W900,
                    textAlign: TextAlign.center,
                  ),
                );
              },
            );
          },
          child: Container(
            height: 40.h,
            width: 200.w,
            padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 4.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              gradient: const LinearGradient(
                colors: [
                  Color(0xff00C0CC),
                  Color(0xff006066),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: Center(
              child: Text(
                "إرسال",
                style: AppStyles.style14W400,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
