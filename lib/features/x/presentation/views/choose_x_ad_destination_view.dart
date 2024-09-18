import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/core/utils/assets.dart';
import 'package:shopping_chart/features/whatsapp/presentation/widgets/destination_check_box.dart';

class ChooseXAdDestinationView extends StatelessWidget {
  const ChooseXAdDestinationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.navBarColor,
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.logout,
            color: Colors.white,
          ),
        ),
        title: Row(
          children: [
            Text(
              "وسع نطاق البيع",
              style: AppStyles.style17W800.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(width: 9.w),
            SvgPicture.asset(
              Assets.imagesStartMarktingYourProject,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: const ChooseXAdDestinationViewBody(),
    );
  }
}

class ChooseXAdDestinationViewBody extends StatelessWidget {
  const ChooseXAdDestinationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 25.h),
        child: Column(
          children: [
            Center(
              child: Text(
                "أختر الوجهة ( X )",
                style: AppStyles.style17W800,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 40.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: Colors.white,
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
                          "الكل",
                          style: AppStyles.style10W800.copyWith(
                            color: const Color(0xff2F2F2F),
                          ),
                        ),
                        SizedBox(height: 6.h),
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
                          "المتابعين",
                          style: AppStyles.style10W800.copyWith(
                            color: Colors.white,
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
                const ChooseDestinationCheckbox()
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
                context.push('/sendingXAdToFollowrsView');
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
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
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
    );
  }
}
