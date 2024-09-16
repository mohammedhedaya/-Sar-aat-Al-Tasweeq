import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import '../../../add_group/presentation/widgets/custom_added_success_dialog.dart';
import '../../../auth/presentation/widgets/auth_text_field.dart';

class LaunchAdAddWhatsappGroupsViewBody extends StatelessWidget {
  const LaunchAdAddWhatsappGroupsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              Assets.imagesApplogo,
            ),
            Text(
              "اسم الجروب",
              style: AppStyles.style12W400.copyWith(
                color: AppColors.whiteColor,
              ),
            ),
            SizedBox(height: 4.h),
            CustomAuthTextField(
              fiiledColor: AppColors.whiteColor.withOpacity(0.10),
              hintText: "",
              onChanged: (value) {},
            ),
            SizedBox(height: 26.h),
            Text(
              "رابط الجروب",
              style: AppStyles.style12W400.copyWith(
                color: AppColors.whiteColor,
              ),
            ),
            SizedBox(height: 4.h),
            CustomAuthTextField(
              fiiledColor: AppColors.whiteColor.withOpacity(0.10),
              hintText: "",
              suffixIcon: InkWell(
                onTap: () {},
                child: Transform.scale(
                  scale: 0.5,
                  child: SvgPicture.asset(
                    Assets.imagesPastLink,
                  ),
                ),
              ),
              onChanged: (value) {},
            ),
            SizedBox(height: 26.h),
            Text(
              "الدولة",
              style: AppStyles.style12W400.copyWith(
                color: AppColors.whiteColor,
              ),
            ),
            SizedBox(height: 4.h),
            CustomAuthTextField(
              fiiledColor: AppColors.whiteColor.withOpacity(0.10),
              hintText: "",
              prefixIcon: Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: SvgPicture.asset(
                  Assets.imagesSuadiFlag,
                  height: 41.h,
                ),
              ),
              suffixIcon: InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: AppColors.whiteColor,
                  size: 30,
                ),
              ),
              onChanged: (value) {},
            ),
            SizedBox(height: 56.h),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  barrierColor: const Color(0xffFFF9F9).withOpacity(0.33),
                  builder: (context) {
                    return const CustomAddedSuccesDialog(
                      text: "تم إضافة مجموعتك في الواتساب",
                    );
                  },
                );
              },
              child: Center(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.w, vertical: 4.h),
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
                  child: Text(
                    "إضافة جروبك فى الواتساب",
                    style: AppStyles.style14W400.copyWith(
                      color: AppColors.whiteColor,
                    ),
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
