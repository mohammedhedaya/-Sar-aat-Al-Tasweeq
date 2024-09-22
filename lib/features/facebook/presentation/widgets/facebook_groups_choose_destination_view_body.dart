import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../whatsapp/presentation/widgets/destination_check_box.dart';

class FacebookGroupsChooseDestinationViewBody extends StatelessWidget {
  const FacebookGroupsChooseDestinationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 25.h),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      "أختر وجهة ( مجموعات الفيسبوك )",
                      style: AppStyles.style17W800,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 40.h),
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: AppColors.whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.whiteColor.withOpacity(0.25),
                            spreadRadius: 3,
                            blurRadius: 5,
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Text(
                            "عدد المجموعات الفيسبوك",
                            style: AppStyles.style17W800.copyWith(
                              color: const Color(0xff2F2F2F),
                            ),
                          ),
                          Text(
                            "4000",
                            style: AppStyles.style17W800.copyWith(
                              color: const Color(0xff2F2F2F),
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 32.h),
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
                  SizedBox(height: 10.h),
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
                              const ChooseDestinationCheckbox()
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
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 20.h),
          child: InkWell(
            onTap: () {
              context.push('/facebookGroupsSendingView');
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
        ),
      ],
    );
  }
}
