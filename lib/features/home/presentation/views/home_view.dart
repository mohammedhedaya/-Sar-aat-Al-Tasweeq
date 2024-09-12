import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/home_view_body.dart.dart';

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
