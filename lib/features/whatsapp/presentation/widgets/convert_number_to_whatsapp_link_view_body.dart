import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/core/utils/assets.dart';
import 'package:shopping_chart/features/auth/presentation/widgets/auth_text_field.dart';

class ConvertNumberToWhatsappLinkViewBody extends StatefulWidget {
  const ConvertNumberToWhatsappLinkViewBody({super.key});

  @override
  State<ConvertNumberToWhatsappLinkViewBody> createState() =>
      _ConvertNumberToWhatsappLinkViewBodyState();
}

class _ConvertNumberToWhatsappLinkViewBodyState
    extends State<ConvertNumberToWhatsappLinkViewBody> {
  final TextEditingController _phoneController = TextEditingController();
  String _whatsAppLink = "https://web.whatsapp.com/966";
  void _updateWhatsAppLink(String number) {
    setState(() {
      _whatsAppLink = "https://web.whatsapp.com/$number";
    });
  }

  void _copyToClipboard() {
    Clipboard.setData(ClipboardData(text: _whatsAppLink));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'تم نسخ رابط الواتس اب !',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(35),
      child: ListView(
        children: [
          Image.asset(
            Assets.imagesApplogo,
          ),
          SizedBox(height: 50.h),
          // Phone Number Input Field
          CustomAuthTextField(
            controller: _phoneController,
            onChanged: _updateWhatsAppLink,
            hintText: "رقم الهاتف",
            keyboardType: TextInputType.phone,
            fiiledColor: AppColors.whiteColor.withOpacity(0.10),
            suffixIcon: InkWell(
              onTap: () {},
              child: Container(
                constraints: BoxConstraints(
                  minWidth: 95.w,
                ),
                width: 95.w,
                height: 70.h,
                decoration: const BoxDecoration(
                  color: Color(0xffD9D9D9),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "966",
                      style: AppStyles.style16W400.copyWith(
                        color: AppColors.blackColor,
                      ),
                    ),
                    SizedBox(width: 5.w),
                    SvgPicture.asset(
                      Assets.imagesSuadiFlag,
                    ),
                    SizedBox(width: 5.w),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      color: AppColors.blackColor,
                    ),
                  ],
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
                  child: SvgPicture.asset(
                    Assets.imagesCopyIcon2,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
