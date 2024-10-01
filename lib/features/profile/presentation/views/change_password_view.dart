import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import '../../../auth/presentation/widgets/auth_btn.dart';
import '../../../auth/presentation/widgets/auth_text_field.dart';

class ProfileChangePasswordView extends StatefulWidget {
  const ProfileChangePasswordView({super.key});

  @override
  State<ProfileChangePasswordView> createState() =>
      _ProfileChangePasswordViewState();
}

class _ProfileChangePasswordViewState extends State<ProfileChangePasswordView> {
  // Manage the obscure text states
  bool isOldPasswordVisible = false;
  bool isNewPasswordVisible = false;
  bool isConfirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              onPressed: () {
                context.pop();
              },
              icon: Icon(
                Icons.arrow_forward_ios_outlined,
                color: isDark ? Colors.white70 : Colors.black87,
              ),
            ),
          ],
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 20.h),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                Assets.imagesHomeBackground,
              ),
              alignment: Alignment.topCenter,
              opacity: 0.10,
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 62.h),
                      // Old Password Field
                      Text(
                        "old_password".tr(context: context),
                        style: AppStyles.style12W400.copyWith(
                          color: isDark ? Colors.white : AppColors.blackColor,
                        ),
                      ),
                      SizedBox(height: 25.h),
                      CustomAuthTextField(
                        fiiledColor: AppColors.whiteColor.withOpacity(0.10),
                        hintText: "",
                        textAlign: TextAlign.center,
                        obscureText: !isOldPasswordVisible, // obscure the text
                        prefixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isOldPasswordVisible = !isOldPasswordVisible;
                            });
                          },
                          icon: Icon(
                            isOldPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: AppColors.visibilityColor,
                          ),
                        ),
                        onChanged: (value) {},
                      ),
                      SizedBox(height: 25.h),

                      // New Password Field
                      Text(
                        "new_password".tr(context: context),
                        style: AppStyles.style12W400.copyWith(
                          color: isDark ? Colors.white : AppColors.blackColor,
                        ),
                      ),
                      SizedBox(height: 23.h),
                      CustomAuthTextField(
                        fiiledColor: AppColors.whiteColor.withOpacity(0.10),
                        hintText: "",
                        textAlign: TextAlign.center,
                        obscureText: !isNewPasswordVisible, // obscure the text
                        prefixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isNewPasswordVisible = !isNewPasswordVisible;
                            });
                          },
                          icon: Icon(
                            isNewPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: AppColors.visibilityColor,
                          ),
                        ),
                        onChanged: (value) {},
                      ),
                      SizedBox(height: 25.h),

                      // Confirm Password Field
                      Text(
                        "confirm_new_password".tr(context: context),
                        style: AppStyles.style12W400.copyWith(
                          color: isDark ? Colors.white : AppColors.blackColor,
                        ),
                      ),
                      SizedBox(height: 23.h),
                      CustomAuthTextField(
                        fiiledColor: AppColors.whiteColor.withOpacity(0.10),
                        hintText: "",
                        textAlign: TextAlign.center,
                        obscureText:
                            !isConfirmPasswordVisible, // obscure the text
                        prefixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isConfirmPasswordVisible =
                                  !isConfirmPasswordVisible;
                            });
                          },
                          icon: Icon(
                            isConfirmPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: AppColors.visibilityColor,
                          ),
                        ),
                        onChanged: (value) {},
                      ),
                      SizedBox(height: 25.h),
                    ],
                  ),
                ),
              ),
              CustomAuthBtn(
                onPressed: () => context.pop(),
                text: "save".tr(context: context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
