import 'package:flutter/material.dart';
import '../widgets/email_view_body.dart';

class EmailView extends StatelessWidget {
  const EmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: EmailViewBody(),
      ),
    );
  }
}
