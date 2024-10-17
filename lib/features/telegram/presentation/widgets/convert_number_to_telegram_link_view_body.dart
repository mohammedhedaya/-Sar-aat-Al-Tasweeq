import 'package:country_code_picker/country_code_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import '../../../auth/presentation/widgets/auth_text_field.dart';

class ConvertNumberToTelegramLinkViewBody extends StatefulWidget {
  const ConvertNumberToTelegramLinkViewBody({super.key});

  @override
  State<ConvertNumberToTelegramLinkViewBody> createState() =>
      _ConvertNumberToTelegramLinkViewBodyState();
}

class _ConvertNumberToTelegramLinkViewBodyState
    extends State<ConvertNumberToTelegramLinkViewBody> {
  final TextEditingController _phoneController = TextEditingController();
  String _countryCode = '+966';
  String _telegramLink = '';
  bool _isButtonVisible = false;

  // Generate the Telegram link
  void _generateTelegramLink() {
    String phoneNumber = _phoneController.text.trim();
    if (phoneNumber.isNotEmpty) {
      setState(() {
        _telegramLink = "https://t.me/$_countryCode$phoneNumber";
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("defaultValidation".tr(context: context)),
        ),
      );
    }
  }

  // Update country code
  void _updateCountryCode(String code) {
    setState(() {
      _countryCode = code;
    });
  }

  // Copy to clipboard
  void _copyToClipboard() {
    if (_telegramLink.isNotEmpty) {
      Clipboard.setData(ClipboardData(text: _telegramLink));
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Thelinkhasbeencopied".tr(context: context)),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Padding(
      padding: const EdgeInsets.all(35),
      child: ListView(
        children: [
          Image.asset(Assets.imagesApplogo),
          SizedBox(height: 50.h),
          CustomAuthTextField(
            onChanged: (value) {
              setState(() {
                _isButtonVisible = value.isNotEmpty;
              });
            },
            controller: _phoneController,
            hintText: 'phone'.tr(context: context),
            keyboardType: TextInputType.phone,
            fiiledColor: AppColors.whiteColor.withOpacity(0.10),
            suffixIcon: Container(
              constraints: BoxConstraints(
                minWidth: 95.w,
              ),
              height: 70.h,
              decoration: BoxDecoration(
                color: const Color(0xffD9D9D9),
                borderRadius: context.locale.languageCode == 'ar'
                    ? BorderRadius.only(
                        topLeft: Radius.circular(20.r),
                        bottomLeft: Radius.circular(20.r),
                      )
                    : BorderRadius.only(
                        topRight: Radius.circular(20.r),
                        bottomRight: Radius.circular(20.r),
                      ),
              ),
              child: CountryCodePicker(
                onChanged: (value) {
                  _updateCountryCode(value.dialCode!);
                },
                initialSelection: 'SA',
                favorite: const ['+966', 'SA'],
                textStyle: const TextStyle(color: Colors.black),
                barrierColor: const Color(0xfffff9f9).withOpacity(0.33),
                textOverflow: TextOverflow.ellipsis,
                boxDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                padding: EdgeInsets.zero,
                showDropDownButton: true,
                flagDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          if (_isButtonVisible)
            ElevatedButton(
              onPressed: _generateTelegramLink,
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                elevation: 0,
                backgroundColor: isDark ? null : AppColors.blueLight,
                minimumSize: Size(double.infinity, 51.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r),
                ),
              ),
              child: Text(
                "Createatelegramlink".tr(context: context),
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          SizedBox(height: 20.h),
          if (_telegramLink.isNotEmpty) ...[
            Padding(
              padding: EdgeInsetsDirectional.only(start: 9.w),
              child: Text(
                "Numberlink".tr(context: context),
                style: AppStyles.style12W400.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 4.h),
            Container(
              decoration: BoxDecoration(
                color: isDark
                    ? Colors.white.withOpacity(0.10)
                    : AppColors.yellowLight,
                borderRadius: BorderRadius.circular(20.r),
              ),
              padding: const EdgeInsets.all(22),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      _telegramLink,
                      style: AppStyles.style12W400.copyWith(
                        color: isDark ? Colors.white : Colors.black,
                      ),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  InkWell(
                    onTap: _copyToClipboard,
                    child: SvgPicture.asset(
                      Assets.imagesCopyIcon2,
                      colorFilter: ColorFilter.mode(
                        isDark ? Colors.white : Colors.black,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}
