import 'package:flutter/material.dart';
import '../widgets/x_view_body.dart';

class XView extends StatelessWidget {
  const XView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: XViewBody(),
      ),
    );
  }
}
