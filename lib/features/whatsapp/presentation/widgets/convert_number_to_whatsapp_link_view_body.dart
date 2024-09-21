import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import '../../../auth/presentation/widgets/auth_text_field.dart';

class ConvertNumberToWhatsappLinkViewBody extends StatefulWidget {
  const ConvertNumberToWhatsappLinkViewBody({super.key});

  @override
  State<ConvertNumberToWhatsappLinkViewBody> createState() =>
      _ConvertNumberToWhatsappLinkViewBodyState();
}

class _ConvertNumberToWhatsappLinkViewBodyState
    extends State<ConvertNumberToWhatsappLinkViewBody> {
  final TextEditingController _phoneController = TextEditingController();
  String _countryCode = '+966'; // Default country code
  String _whatsAppLink = '';

  @override
  void initState() {
    super.initState();
    _updateWhatsAppLink(''); // Initialize with an empty number
  }

  void _updateWhatsAppLink(String number) {
    setState(() {
      _whatsAppLink = "https://web.whatsapp.com/$_countryCode$number";
    });
  }

  void _updateCountryCode(String code) {
    setState(() {
      _countryCode = code;
      _whatsAppLink =
          "https://web.whatsapp.com/$_countryCode${_phoneController.text}";
    });
  }

  void _copyToClipboard() {
    Clipboard.setData(ClipboardData(text: _whatsAppLink));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('تم نسخ رابط الواتس اب !'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(35),
      child: ListView(
        children: [
          Image.asset(Assets.imagesApplogo),
          SizedBox(height: 50.h),
          // Phone Number Input Field
          CustomAuthTextField(
            controller: _phoneController,
            onChanged: _updateWhatsAppLink,
            hintText: "رقم الهاتف",
            keyboardType: TextInputType.phone,
            fiiledColor: AppColors.whiteColor.withOpacity(0.10),
            suffixIcon: Container(
              constraints: BoxConstraints(
                minWidth: 95.w,
              ),
              height: 70.h,
              decoration: BoxDecoration(
                color: const Color(0xffD9D9D9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                  bottomLeft: Radius.circular(20.r),
                ),
              ),
              child: CountryCodePicker(
                onChanged: (value) {
                  _updateCountryCode(value.dialCode!);
                },
                initialSelection: 'SA',
                favorite: const ['+966', 'SA'],
                barrierColor: const Color(0xfffff9f9).withOpacity(0.33),
                textOverflow: TextOverflow.ellipsis,
                boxDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: const Color(0XFFD9D9D9),
                ),
                padding: EdgeInsets.zero,
                flagDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          // WhatsApp Link Display
          Padding(
            padding: EdgeInsetsDirectional.only(start: 9.w),
            child: Text(
              "رابط الرقم",
              style: AppStyles.style12W400.copyWith(
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 4.h),
          Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.10),
              borderRadius: BorderRadius.circular(20.r),
            ),
            padding: const EdgeInsets.all(22),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    _whatsAppLink,
                    style: AppStyles.style12W400.copyWith(
                      color: Colors.white,
                    ),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(width: 8.w),
                InkWell(
                  onTap: _copyToClipboard,
                  child: SvgPicture.asset(Assets.imagesCopyIcon2),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
