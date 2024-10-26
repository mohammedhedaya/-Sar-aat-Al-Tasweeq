import 'package:flutter/material.dart';
import '../widgets/instagram_view_body.dart';

class InstagramView extends StatelessWidget {
  const InstagramView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: InstagramViewBody(),
      ),
    );
  }
}
