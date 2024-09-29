import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_text_style.dart';
import '../widgets/add_trends_view_body.dart';

class AddTrendsView extends StatelessWidget {
  const AddTrendsView({super.key});

  @override
  Widget build(BuildContext context) {
    // final GoRouterState state = GoRouterState.of(context);
    // final extra = state.extra as Map<String, int>?;
    // final Object numbOfTrends = extra?['numbOfTrends'] ?? 'Unknown Number';
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          "Publishyouradon5trends".tr(context: context),
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
