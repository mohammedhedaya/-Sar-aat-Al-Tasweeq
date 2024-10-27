import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_chart/core/constants/constants.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import '../../../add_group/presentation/widgets/custom_added_success_dialog.dart';
import '../../../auth/presentation/widgets/auth_text_field.dart';

class LaunchAdAddWhatsappGroupsViewBody extends StatelessWidget {
  const LaunchAdAddWhatsappGroupsViewBody({super.key});

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
            const CustomLinkGroupTextField(),
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
                dialogTextStyle: const TextStyle(
                  color: Colors.white,
                ),
                showOnlyCountryWhenClosed: true,
                flagWidth: 50.w,
                padding: EdgeInsets.zero,
                flagDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                ),
              ),
              suffixIcon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: isDark
                    ? const Color.fromARGB(255, 14, 204, 185)
                    : const Color.fromARGB(255, 237, 180, 11),
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

class CustomLinkGroupTextField extends StatefulWidget {
  const CustomLinkGroupTextField({super.key});

  @override
  State<CustomLinkGroupTextField> createState() =>
      _CustomLinkGroupTextFieldState();
}

class _CustomLinkGroupTextFieldState extends State<CustomLinkGroupTextField> {
  final TextEditingController _linkController = TextEditingController();

  Future<void> _pasteLink() async {
    final data = await Clipboard.getData(Clipboard.kTextPlain);
    if (data != null && data.text != null) {
      setState(() {
        _linkController.text = data.text!;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomAuthTextField(
      controller: _linkController,
      fiiledColor: isDark(context)
          ? AppColors.whiteColor.withOpacity(0.10)
          : AppColors.fillLight,
      hintText: "",
      suffixIcon: InkWell(
        onTap: _pasteLink,
        child: Transform.scale(
          scale: 0.5,
          child: isDark(context)
              ? SvgPicture.asset(
                  Assets.imagesLinkTeal,
                )
              : SvgPicture.asset(
                  Assets.imagesLinkLight,
                ),
        ),
      ),
      onChanged: (value) {},
    );
  }
}
