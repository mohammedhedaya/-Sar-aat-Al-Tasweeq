import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/features/telegram/presentation/widgets/launch_telegram_groups_view_body.dart';
import '../../../../core/utils/app_text_style.dart';

class LaunchAdTelegramGroupsView extends StatelessWidget {
  const LaunchAdTelegramGroupsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          "إضافة مجموعات الواتساب",
          style: AppStyles.style20W400,
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: const LaunchAdTelegramGroupsViewBody(),
    );
  }
}
