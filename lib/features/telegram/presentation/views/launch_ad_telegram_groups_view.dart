import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/launch_telegram_groups_view_body.dart';
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
          "AddTelegramGroup".tr(context: context),
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
