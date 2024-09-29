import 'package:country_code_picker/country_code_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import '../../../add_group/presentation/widgets/custom_added_success_dialog.dart';
import '../../../auth/presentation/widgets/auth_text_field.dart';

class LaunchAdTelegramGroupsViewBody extends StatelessWidget {
  const LaunchAdTelegramGroupsViewBody({super.key});

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
            Padding(
              padding: EdgeInsetsDirectional.only(start: 10.w),
              child: Text(
                "chanelName".tr(context: context),
                style: AppStyles.style12W400.copyWith(
                  color: AppColors.whiteColor,
                ),
              ),
            ),
            SizedBox(height: 4.h),
            CustomAuthTextField(
              fiiledColor: AppColors.whiteColor.withOpacity(0.10),
              hintText: "",
              onChanged: (value) {},
            ),
            SizedBox(height: 26.h),
            Padding(
              padding: EdgeInsetsDirectional.only(start: 10.w),
              child: Text(
                "chanelLink".tr(context: context),
                style: AppStyles.style12W400.copyWith(
                  color: AppColors.whiteColor,
                ),
              ),
            ),
            SizedBox(height: 4.h),
            const CustomPastLinkTelegramTextField(),
            SizedBox(height: 26.h),
            Padding(
              padding: EdgeInsetsDirectional.only(start: 10.w),
              child: Text(
                "country".tr(context: context),
                style: AppStyles.style12W400.copyWith(
                  color: AppColors.whiteColor,
                ),
              ),
            ),
            SizedBox(height: 4.h),
            CustomAuthTextField(
              readOnly: true,
              fiiledColor: AppColors.whiteColor.withOpacity(0.10),
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
                showCountryOnly: true,
                hideMainText: true,
                flagWidth: 50.w,
                padding: EdgeInsets.zero,
                flagDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                ),
              ),
              suffixIcon: const Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Color.fromARGB(255, 10, 208, 188),
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
                      text: "doneAddyourtelegramgroup".tr(context: context),
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
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                  child: Text(
                    "Addyourtelegramgroup".tr(context: context),
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

class CustomPastLinkTelegramTextField extends StatefulWidget {
  const CustomPastLinkTelegramTextField({
    super.key,
  });

  @override
  State<CustomPastLinkTelegramTextField> createState() =>
      _CustomPastLinkTelegramTextFieldState();
}

class _CustomPastLinkTelegramTextFieldState
    extends State<CustomPastLinkTelegramTextField> {
  final TextEditingController linkController = TextEditingController();

  @override
  void dispose() {
    linkController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomAuthTextField(
      controller: linkController,
      fiiledColor: AppColors.whiteColor.withOpacity(0.10),
      hintText: "",
      suffixIcon: InkWell(
        onTap: () async {
          // Get the data from the clipboard
          ClipboardData? clipboardData = await Clipboard.getData('text/plain');
          if (clipboardData != null) {
            // Set the clipboard text to the controller
            setState(() {
              linkController.text = clipboardData.text ?? '';
            });
          }
        },
        child: Transform.scale(
          scale: 0.5,
          child: SvgPicture.asset(
            Assets.imagesLinkTeal,
          ),
        ),
      ),
      onChanged: (value) {},
    );
  }
}
