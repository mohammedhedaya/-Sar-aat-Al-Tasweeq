import 'package:flutter/material.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:shopping_chart/features/home/presentation/widgets/home_view_body.dart.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.darkGray,
      appBar: CustomAppBar(),
      body: HomeViewBody(),
    );
  }
}
