import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/features/telegram/presentation/widgets/choose_telegram_group_to_send_view1_body.dart';

class ChooseTelegramGroupToSendView1 extends StatelessWidget {
  const ChooseTelegramGroupToSendView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
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
      body: const ChooseTelegramGroupToSendViewBody1(),
    );
  }
}

