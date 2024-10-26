import 'package:flutter/material.dart';
import '../widgets/whatsapp_view_body.dart';

class WhatsappView extends StatelessWidget {
  const WhatsappView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: WhatsappViewBody(),
      ),
    );
  }
}
