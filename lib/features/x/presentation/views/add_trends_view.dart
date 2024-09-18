import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/features/x/presentation/widgets/add_trends_view_body.dart';

class AddTrendsView extends StatelessWidget {
  const AddTrendsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.navBarColor,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          "أنشر أعلانك على 9 ترندات X",
          style: AppStyles.style18W700.copyWith(
            shadows: [
              Shadow(
                color: Colors.white.withOpacity(0.25),
                offset: const Offset(0, 0),
                blurRadius: 5.2,
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: const AddTrendsViewBody(),
    );
  }
}
