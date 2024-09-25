import 'package:flutter/material.dart';

import '../../widgets/custom_positioned.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: LoginViewBody(),
      ),
    );
  }
}
