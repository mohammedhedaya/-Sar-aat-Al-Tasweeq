import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/choose_telegram_group_to_send_view2_body.dart';

class ChooseTelegramGroupToSendView2 extends StatelessWidget {
  const ChooseTelegramGroupToSendView2({super.key});

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
      body: const ChooseTelegramGroupToSendViewBody2(),
    );
  }
}
