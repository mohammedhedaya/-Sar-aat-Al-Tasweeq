import 'package:flutter/material.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/features/login/presentation/widgets/custom_positioned.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.darkGray,
      body:  CustomPositioned(),
    );
  }
}
