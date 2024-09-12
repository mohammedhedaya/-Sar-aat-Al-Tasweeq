import 'package:flutter/material.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../widgets/custom_positioned.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.darkGray,
        body: LoginViewBody(),
      ),
    );
  }
}
