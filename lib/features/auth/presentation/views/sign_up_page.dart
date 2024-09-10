import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/features/auth/presentation/widgets/sign_up_view_body.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.darkGray,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black38,
          ),
        ),
      ),
      body: const SignUpViewBody(),
    );
  }
}
