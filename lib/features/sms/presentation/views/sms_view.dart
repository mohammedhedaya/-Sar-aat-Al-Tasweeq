import 'package:flutter/material.dart';
import '../widgets/sms_view_body.dart';

class SMSView extends StatelessWidget {
  const SMSView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SMSViewBody(),
      ),
    );
  }
}
