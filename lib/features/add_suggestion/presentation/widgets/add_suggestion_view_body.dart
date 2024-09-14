import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import '../../../add_group/presentation/widgets/custom_added_success_dialog.dart';

class AddSuggestionViewBody extends StatelessWidget {
  const AddSuggestionViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 25.w),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              Assets.imagesAddSuggestion,
            ),
            opacity: 0.19,
            alignment: Alignment(0.3, -1.0),
            scale: 4,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "نسمعك بوضوح",
                  style: AppStyles.style25W400,
                ),
                SvgPicture.asset(
                  Assets.imagesLikeicon,
                ),
              ],
            ),
            SizedBox(height: 30.h),
            Center(
              child: Text(
                "نساعدك فى بناء تجربتك مع سرعه التسويق",
                style: AppStyles.style20W400,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 50.h),
            Text(
              "أطرح أقتراحك",
              style: AppStyles.style12W400.copyWith(
                color: AppColors.whiteColor,
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(height: 10.h),
            TextFormField(
              onChanged: (value) {},
              onFieldSubmitted: (value) {},
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'هذا الحقل مطلوب';
                }
                return null;
              },
              cursorColor: AppColors.whiteColor,
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.whiteColor.withOpacity(0.10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.r),
                  borderSide: BorderSide.none,
                ),
              ),
              style: AppStyles.style12W400.copyWith(
                color: AppColors.whiteColor,
              ),
              textAlign: TextAlign.start,
              maxLines: 20,
            ),
            SizedBox(height: 30.h),
            Center(
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    barrierColor: const Color(0xffFFF9F9).withOpacity(0.33),
                    builder: (context) {
                      return  CustomAddedSuccesDialog(
                        text: "سرعة التسويق يشكرك على الاقتراح",
                        style:  AppStyles.style15W900,
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
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "إرسال",
                      style: AppStyles.style14W400.copyWith(
                        color: AppColors.whiteColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25.h),
          ],
        ),
      ),
    );
  }
}
