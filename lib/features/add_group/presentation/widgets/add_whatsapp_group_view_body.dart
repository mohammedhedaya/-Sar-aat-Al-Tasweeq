import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import 'custom_added_success_dialog.dart';
import '../../../auth/presentation/widgets/auth_text_field.dart';

class AddWhatsappGroupViewBody extends StatefulWidget {
  const AddWhatsappGroupViewBody({super.key});

  @override
  State<AddWhatsappGroupViewBody> createState() =>
      _AddWhatsappGroupViewBodyState();
}

class _AddWhatsappGroupViewBodyState extends State<AddWhatsappGroupViewBody> {
  final TextEditingController groupLinkController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;

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
              "GroupName".tr(context: context),
              style: AppStyles.style12W400.copyWith(
                color: isDark ? AppColors.whiteColor : AppColors.blackColor,
              ),
            ),
            SizedBox(height: 4.h),
            CustomAuthTextField(
              fiiledColor: isDark
                  ? AppColors.whiteColor.withOpacity(0.10)
                  : AppColors.fillLight,
              hintText: "",
              onChanged: (value) {},
            ),
            SizedBox(height: 26.h),
            Text(
              "GroupLink".tr(context: context),
              style: AppStyles.style12W400.copyWith(
                color: isDark ? AppColors.whiteColor : AppColors.blackColor,
              ),
            ),
            SizedBox(height: 4.h),
            CustomAuthTextField(
              onChanged: (value) {},
              controller: groupLinkController,
              fiiledColor: isDark
                  ? AppColors.whiteColor.withOpacity(0.10)
                  : AppColors.fillLight,
              hintText: "",
              suffixIcon: InkWell(
                onTap: () async {
                  final data = await Clipboard.getData(Clipboard.kTextPlain);
                  if (data != null) {
                    groupLinkController.text = data.text ?? '';
                  }
                },
                child: Transform.scale(
                  scale: 0.5,
                  child: SvgPicture.asset(
                    Assets.imagesLinkTeal,
                    colorFilter: ColorFilter.mode(
                      isDark ? const Color(0xff00C0CC) : AppColors.yellowLight,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 26.h),
            Text(
              "country".tr(context: context),
              style: AppStyles.style12W400.copyWith(
                color: isDark ? AppColors.whiteColor : AppColors.blackColor,
              ),
            ),
            SizedBox(height: 4.h),
            CustomAuthTextField(
              readOnly: true,
              fiiledColor: isDark
                  ? AppColors.whiteColor.withOpacity(0.10)
                  : AppColors.fillLight,
              hintText: "",
              prefixIcon: CountryCodePicker(
                onChanged: (value) {},
                initialSelection: 'SA',
                favorite: const ['+966', 'SA'],
                barrierColor: const Color(0xfffff9f9).withOpacity(0.33),
                textOverflow: TextOverflow.ellipsis,
                boxDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                padding: EdgeInsets.zero,
                dialogTextStyle: const TextStyle(
                  color: Colors.white,
                ),
                showFlag: true,
                flagWidth: 50.w,
                // hideMainText: true,
                // showCountryOnly: true,
                showOnlyCountryWhenClosed: true,
                flagDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                ),
              ),
              suffixIcon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: isDark ? const Color(0xff00C0CC) : AppColors.yellowLight,
                size: 30,
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
                    return CustomAddedSuccesDialog(
                      text: "doneAddyourwhatsappgroup".tr(context: context),
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
                    gradient: isDark
                        ? const LinearGradient(
                            colors: [
                              Color(0xff00C0CC),
                              Color(0xff006066),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          )
                        : const LinearGradient(
                            colors: [
                              Color(0xffF9D053),
                              Color(0xff796727),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                  ),
                  child: Text(
                    "Addyourwhatsappgroup".tr(context: context),
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
