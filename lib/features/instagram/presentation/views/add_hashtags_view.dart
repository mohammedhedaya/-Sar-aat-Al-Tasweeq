import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/features/instagram/presentation/widgets/add_hashtags_view_body.dart';

class AddHashtagsView extends StatelessWidget {
  const AddHashtagsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.navBarColor,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          " # إضافة الهاشتجات",
          style: AppStyles.style17W800.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.white.withOpacity(0.8),
            ),
          ),
        ],
      ),
      body: const AddHashtagsViewBody(),
    );
  }
}
