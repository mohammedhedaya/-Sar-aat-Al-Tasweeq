import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/features/auth/presentation/widgets/cusom_add_profile_image_widget.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_style.dart';
import '../../cubit/auth_cubit.dart';
import '../../cubit/auth_state.dart';
import '../../widgets/auth_text_field.dart';
import '../../widgets/terms_and_condition.dart';

class SignUpProfileView extends StatelessWidget {
  const SignUpProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 34.w),
            child: BlocConsumer<AuthCubit, AuthState>(
              listener: (context, state) {},
              builder: (context, state) {
                AuthCubit cubit = BlocProvider.of<AuthCubit>(context);
                return Form(
                  key: cubit.signUpProfileFormKey,
                  child: Column(
                    children: [
                      SizedBox(height: 70.h),
                      const CustomAddProfileImageWidget(),
                      SizedBox(height: 29.h),
                      Text(
                        "صورة الملف الشخصى",
                        style: AppStyles.style20W400,
                      ),
                      SizedBox(height: 75.h),
                      CustomAuthTextField(
                        fiiledColor: AppColors.whiteColor.withOpacity(0.10),
                        hintText: "رقم الهاتف",
                        keyboardType: TextInputType.phone,
                        suffixIcon: InkWell(
                          onTap: () {},
                          child: Container(
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
                              onChanged: (value) {},
                              initialSelection: 'SA',
                              favorite: const ['+966', 'SA'],
                              barrierColor:
                                  const Color(0xfffff9f9).withOpacity(0.33),
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
                      ),
                      SizedBox(height: 23.h),
                      CustomAuthTextField(
                        fiiledColor: AppColors.whiteColor.withOpacity(0.10),
                        hintText: "كلمة السر",
                        suffixIcon: IconButton(
                          onPressed: () {
                            cubit.obscurePasswordText();
                          },
                          color: AppColors.visibilityColor,
                          icon: Icon(
                            cubit.obscurePasswordTextValue == true
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                          ),
                        ),
                        obscureText: cubit.obscurePasswordTextValue,
                        onChanged: (password) {
                          cubit.password = password;
                        },
                      ),
                      SizedBox(height: 23.h),
                      CustomAuthTextField(
                        fiiledColor: AppColors.whiteColor.withOpacity(0.10),
                        hintText: "تأكيد كلمة السر",
                        suffixIcon: IconButton(
                          onPressed: () {
                            cubit.obscurePasswordText();
                          },
                          color: AppColors.visibilityColor,
                          icon: Icon(
                            cubit.obscurePasswordTextValue == true
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                          ),
                        ),
                        obscureText: cubit.obscurePasswordTextValue,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'هذا الحقل مطلوب';
                          } else if (cubit.password != value) {
                            return 'كلمة السر غير متطابقة';
                          }
                          return null;
                        },
                        onChanged: (confirmpassword) {
                          cubit.confirmPassword = confirmpassword;
                        },
                      ),
                      SizedBox(height: 17.h),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 60.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: AppColors.whiteColor.withOpacity(0.10),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: CountryCodePicker(
                                onChanged: (value) {},
                                initialSelection: 'SA',
                                favorite: const ['+966', 'SA'],
                                barrierColor:
                                    const Color(0xfffff9f9).withOpacity(0.33),
                                textOverflow: TextOverflow.ellipsis,
                                boxDecoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  color: const Color(0XFFD9D9D9),
                                ),
                                padding: EdgeInsets.zero,
                                showFlag: true,
                                hideMainText: true,
                                showCountryOnly: true,
                                flagDecoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.r),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 6.w),
                          Expanded(
                            child: CustomAuthTextField(
                              onChanged: (value) {},
                              hintText: "المدينة",
                              textAlign: TextAlign.center,
                              fiiledColor: Colors.white.withOpacity(0.10),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      const TermsConditionsWidget(),
                      SizedBox(height: 22.h),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            if (cubit.signUpProfileFormKey.currentState!
                                .validate()) {
                              context.push("/signUpOTPView");
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.blackColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          child: Text(
                            "التالى",
                            style: AppStyles.style14W600,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
