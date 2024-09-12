import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:shopping_chart/features/auth/presentation/cubit/auth_state.dart';
import 'package:shopping_chart/features/auth/presentation/widgets/auth_text_field.dart';
import 'package:shopping_chart/features/auth/presentation/widgets/custom_login_icon.dart';
import 'package:shopping_chart/features/auth/presentation/widgets/swith_theme.dart';

class CustomLoginForm extends StatelessWidget {
  const CustomLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        AuthCubit cubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: cubit.loginFormKey,
          child: Stack(
            children: [
              Positioned(
                top: 350,
                left: 36,
                right: 36,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomAuthTextField(
                      hintText: "الأيميل",
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (email) {
                        cubit.email = email;
                      },
                      validator: (email) {
                        if (email == null || email.isEmpty) {
                          return 'من فضلك قم بادخال بريد الكتروني';
                        } else if (!RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                        ).hasMatch(email)) {
                          return 'من فضلك قم بادخال بريد الكتروني صحيح';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20.h),
                    CustomAuthTextField(
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
                      validator: (password) {
                        if (password == null || password.isEmpty) {
                          return 'من فضلك قم بادخال كلمة السر';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 26.h),
                    const SwithTheme(),
                  ],
                ),
              ),
              Positioned(
                bottom: 125.h,
                left: 0.w,
                child: CustomLoginIcon(
                  onTap: () {
                    if (cubit.loginFormKey.currentState!.validate()) {
                      context.go("/navBarView");
                    }
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
