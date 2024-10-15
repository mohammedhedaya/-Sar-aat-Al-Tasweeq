import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../cubit/auth_cubit.dart';
import '../cubit/auth_state.dart';
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
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        final cubit = context.read<AuthCubit>();
        return FormField<bool>(validator: (value) {
          if (value != true) {
            return 'You must accept the terms and conditions'
                .tr(context: context);
          }
          return null;
        }, builder: (FormFieldState<bool> state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: isChecked,
                    visualDensity: const VisualDensity(
                      horizontal: VisualDensity.minimumDensity,
                      vertical: VisualDensity.minimumDensity,
                    ),
                    onChanged: (value) {
                      cubit.updateTermsChecked(value ?? false);
                      state.didChange(value);
                      isChecked = value ?? false;
                    },
                    activeColor:
                        isDark ? AppColors.whiteColor : AppColors.blueLight,
                    checkColor:
                        isDark ? AppColors.blackColor : AppColors.whiteColor,
                    side: BorderSide(
                      color:
                          isDark ? AppColors.whiteColor : AppColors.blueLight,
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
                        style: AppStyles.style13W400.copyWith(
                          color: isDark
                              ? AppColors.whiteColor
                              : AppColors.blackColor,
                        ),
                        children: [
                          TextSpan(
                            text: "termsAndConditions".tr(context: context),
                            style: AppStyles.style13W600.copyWith(
                              color: isDark
                                  ? AppColors.whiteColor
                                  : AppColors.blackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              if (state.hasError)
                Padding(
                  padding: EdgeInsetsDirectional.only(start: 5.w),
                  child: Text(
                    state.errorText!,
                    style: TextStyle(
                      color: isDark ? AppColors.yellowLight : Colors.red,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
            ],
          );
        });
      },
    );
  }

  void _showTermsDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
        return AlertDialog(
          title: Text(
            "termsAndConditions".tr(context: context),
            style: AppStyles.style16W900.copyWith(
              color: isDark ? null : AppColors.whiteColor,
            ),
          ),
          content: SingleChildScrollView(
            child: Text(
              termsAndConditions,
              style: AppStyles.style13W400.copyWith(
                color: isDark ? null : AppColors.whiteColor,
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "agree".tr(context: context),
                style: AppStyles.style13W600.copyWith(
                  color: isDark ? null : AppColors.whiteColor,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
