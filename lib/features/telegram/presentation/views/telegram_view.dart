import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/telegram_view_body.dart';

class TelegramView extends StatelessWidget {
  const TelegramView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
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
      body: const TelegramViewBody(),
    );
  }
}
