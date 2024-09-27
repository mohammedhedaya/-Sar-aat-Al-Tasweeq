import 'package:easy_localization/easy_localization.dart';
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

  final String termsAndConditions = '''
  1. يجب عليك الموافقة على جميع الشروط قبل المتابعة.
  2. تحتفظ الشركة بالحق في تحديث هذه الشروط في أي وقت.
  3. أي انتهاك قد يؤدي إلى إنهاء حسابك.
  4. جميع المدفوعات نهائية وغير قابلة للاسترداد.
  5. استخدام هذا التطبيق يكون على مسؤوليتك الخاصة.
  6. أنت مسؤول عن أمان حسابك.
  7. سيتم استخدام أي بيانات تقدمها وفقًا لسياسة الخصوصية الخاصة بنا.
  8. توافق على عدم إساءة استخدام الخدمات المقدمة من قبل الشركة.
  9. سيتم حل أي نزاع وفقًا للقوانين المعمول بها في بلدك.
  10. يمكن للشركة تعديل خدماتها دون إشعار مسبق.
  ''';

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
          onTap: () {
            _showTermsDialog();
          },
          child: RichText(
            text: TextSpan(
              text: "iagree".tr(context: context),
              style: AppStyles.style13W400,
              children: [
                TextSpan(
                  text: "termsAndConditions".tr(context: context),
                  style: AppStyles.style13W600,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _showTermsDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "termsAndConditions".tr(context: context),
            style: AppStyles.style16W900,
          ),
          content: SingleChildScrollView(
            child: Text(
              termsAndConditions,
              style: AppStyles.style13W400,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "agree".tr(context: context),
                style: AppStyles.style13W600,
              ),
            ),
          ],
        );
      },
    );
  }
}
