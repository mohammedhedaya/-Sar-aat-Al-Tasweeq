import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_text_style.dart';
import '../../../widgets/destination_check_box.dart';

class WhatsappSendToChatsPage extends StatelessWidget {
  const WhatsappSendToChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 25.h),
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
                  SizedBox(height: 20.h),
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
        ),
        InkWell(
          onTap: () {
            context.push('/whastappSendingView');
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
                "قم بالإرسال",
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
