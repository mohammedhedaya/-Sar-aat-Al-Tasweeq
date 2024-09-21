import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import '../../../whatsapp/presentation/widgets/custom_show_dialog.dart';
import '../../../whatsapp/presentation/widgets/destination_check_box.dart';

class UserDetailsView extends StatelessWidget {
  const UserDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              SizedBox(height: 10.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 10.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: Colors.white),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      Assets.imagesSendforward,
                    ),
                    Text(
                      "CARZIMA23",
                      style: AppStyles.style24W400,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32.h),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                            text: "اسم الشخص ",
                            style: AppStyles.style13W600,
                            children: [
                              TextSpan(
                                text: "CARZIMA23",
                                style: AppStyles.style13W600.copyWith(
                                  color: const Color(0xff00C0CC),
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                            text: "عدد المتابعين والمتابعون ",
                            style: AppStyles.style13W600,
                            children: [
                              TextSpan(
                                text: "(4000)",
                                style: AppStyles.style13W600.copyWith(
                                  color: const Color(0xff00C0CC),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 23.w),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 5.h),
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
                            "إعادة الشحن",
                            style: AppStyles.style14W400,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Text(
                  "* عدد المسموح الإرسال علية 400 شخص فقط برجاء شحن المزيد من الماسات",
                  style: AppStyles.style13W600.copyWith(
                    fontSize: 9.sp,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(height: 35.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 27.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: const Color(0xff9E0404),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.whiteColor.withOpacity(0.25),
                            spreadRadius: 3,
                            blurRadius: 5,
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "تحديد الكل",
                          style: AppStyles.style10W800.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 25.w),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Text(
                            "المتابعين",
                            style: AppStyles.style10W800.copyWith(
                              color: const Color(0xff2F2F2F),
                            ),
                          ),
                          SizedBox(height: 6.h),
                          Text(
                            "1000",
                            style: AppStyles.style17W800.copyWith(
                              color: const Color(0xff2F2F2F),
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 25.w),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: const Color(0xff999999),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "المتابعون",
                            style: AppStyles.style10W800.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 6.h),
                          Text(
                            "3000",
                            style: AppStyles.style17W800.copyWith(
                              color: const Color(0xff2F2F2F),
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
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
              SizedBox(height: 27.h),
              Column(
                children: List.generate(
                  5,
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
              SizedBox(height: 59.h),
              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    barrierColor: const Color(0xffFFF9F9).withOpacity(0.33),
                    builder: (context) {
                      return CustomShowDialog(
                        onTap: () {
                          context.push('/instagramSendingView');
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
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.w, vertical: 4.h),
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
          ),
        ),
      ),
    );
  }
}
