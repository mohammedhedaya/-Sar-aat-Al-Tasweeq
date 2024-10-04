import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_text_style.dart';
import '../widgets/subscribe_to_the_package_view_body.dart';

class SubscribeToThePackageView extends StatelessWidget {
  const SubscribeToThePackageView({super.key, this.onBackToHome});
  final VoidCallback? onBackToHome;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {
              if (context.canPop()) {
                context.pop();
              } else if (onBackToHome != null) {
                onBackToHome!();
              }
            },
            icon: const Icon(
              Icons.arrow_forward_ios_outlined,
            ),
          ),
        ],
        elevation: 0,
        title: Text(
          "subscription_of_package".tr(context: context),
          style: AppStyles.style20W900,
        ),
      ),
      body: const SubscribeToThePackageViewBody(),
    );
  }
}
