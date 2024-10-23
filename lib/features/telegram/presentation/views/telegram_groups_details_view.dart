import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/telegram_groups_details_view_body.dart';

class TelegramGroupsDetailsView extends StatelessWidget {
  const TelegramGroupsDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(
              Icons.arrow_forward_ios_sharp,
            ),
          ),
        ],
      ),
      body: const TelegramGroupsDetailsViewBody(),
    );
  }
}
