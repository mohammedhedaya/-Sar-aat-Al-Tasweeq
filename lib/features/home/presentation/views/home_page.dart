import 'package:flutter/material.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/features/home/presentation/widgets/carousel_slider_widget.dart';
import 'package:shopping_chart/features/home/presentation/widgets/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkGray,
      appBar:  const CustomAppBar(),
      body:CarouselSliderWidget(),
    );
  }
}
