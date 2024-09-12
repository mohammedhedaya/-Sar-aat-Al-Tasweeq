import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/features/subscribe_package/presentation/widgets/subscribe_to_the_package_view_body.dart';

class SubscribeToThePackageView extends StatelessWidget {
  const SubscribeToThePackageView({super.key});

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
              context.pop();
            },
            icon: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.white,
            ),
          ),
        ],
        elevation: 0,
        title: Text(
          "أشتراك الباقة",
          style: AppStyles.style20W900,
        ),
      ),
      body: const SubscribeToThePackageViewBody(),
    );
  }
}
