import 'package:flutter/material.dart';
import '../widgets/facebook_view_body.dart';

class FacebookView extends StatelessWidget {
  const FacebookView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: FacebookViewBody(),
      ),
    );
  }
}
