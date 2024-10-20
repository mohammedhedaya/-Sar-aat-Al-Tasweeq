import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import '../../../add_group/presentation/widgets/custom_added_success_dialog.dart';

class WhatsappAddSuggestionViewBody extends StatelessWidget {
  const WhatsappAddSuggestionViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;

    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 25.w),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage(
              Assets.imagesAddSuggestion,
            ),
            opacity: 0.19,
            colorFilter: ColorFilter.mode(
              isDark ? Colors.white : Colors.black,
              BlendMode.srcIn,
            ),
            alignment: const Alignment(0.3, -1.0),
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
                  "hearyouclearly".tr(context: context),
                  style: AppStyles.style25W400,
                ),
                SvgPicture.asset(
                  Assets.imagesLikeicon,
                  colorFilter: ColorFilter.mode(
                    isDark ? const Color(0xff00C0CC) : Colors.orange,
                    BlendMode.srcIn,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.h),
            Center(
              child: Text(
                "WeHelpYou".tr(context: context),
                style: AppStyles.style20W400,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 50.h),
            Text(
              "writeyoursuggestion".tr(context: context),
              style: AppStyles.style12W400.copyWith(
                color: AppColors.whiteColor,
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 10.h),
            TextFormField(
              onChanged: (value) {},
              onFieldSubmitted: (value) {},
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "defaultValidation".tr(context: context);
                }
                return null;
              },
              cursorColor: AppColors.whiteColor,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.whiteColor.withOpacity(0.10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.r),
                    borderSide: isDark
                        ? BorderSide.none
                        : const BorderSide(
                            color: AppColors.blueLight,
                          ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.r),
                    borderSide: isDark
                        ? BorderSide.none
                        : const BorderSide(
                            color: AppColors.blueLight,
                          ),
                  )),
              style: AppStyles.style12W400.copyWith(
                color: isDark ? AppColors.whiteColor : AppColors.blackColor,
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
                      return CustomAddedSuccesDialog(
                        text: "wethankyouforsuggestion".tr(context: context),
                        style: AppStyles.style15W900,
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
                    color: isDark ? null : Colors.orange,
                    gradient: isDark
                        ? const LinearGradient(
                            colors: [
                              Color(0xff00C0CC),
                              Color(0xff006066),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          )
                        : null,
                  ),
                  child: Center(
                    child: Text(
                      "send".tr(context: context),
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
