import 'package:flutter/material.dart';
import '../widgets/telegram_view_body.dart';

class TelegramView extends StatelessWidget {
  const TelegramView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: TelegramViewBody(),
      ),
    );
  }
}
