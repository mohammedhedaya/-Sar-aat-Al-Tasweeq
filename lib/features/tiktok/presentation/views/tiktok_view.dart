import 'package:flutter/material.dart';
import '../widgets/tiktok_view_body.dart';

class TiktokView extends StatelessWidget {
  const TiktokView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: TiktokViewBody(),
      ),
    );
  }
}
