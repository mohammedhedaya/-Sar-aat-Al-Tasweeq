import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class TermsConditionsWidget extends StatefulWidget {
  const TermsConditionsWidget({super.key});

  @override
  State<TermsConditionsWidget> createState() => _TermsConditionsWidgetState();
}

class _TermsConditionsWidgetState extends State<TermsConditionsWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          value: isChecked,
          visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
            vertical: VisualDensity.minimumDensity,
          ),
          onChanged: (value) {
            setState(() {
              isChecked = value!;
            });
          },
          activeColor: AppColors.whiteColor,
          checkColor: AppColors.blackColor,
          side: const BorderSide(
            color: AppColors.whiteColor,
            strokeAlign: 3.0,
          ),
        ),
        InkWell(
          onTap: () {},
          child: RichText(
            text: TextSpan(
              text: "أوافق على",
              style: AppStyles.style13W400,
              children: [
                TextSpan(
                  text: " الشروط والاحكام",
                  style: AppStyles.style13W600,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
