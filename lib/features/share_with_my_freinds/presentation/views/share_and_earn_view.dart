import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_text_style.dart';

import '../widgets/sharing_earn_body.dart';

class ShareAndEarnView extends StatelessWidget {
  const ShareAndEarnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          "شارك واربح",
          style: AppStyles.style20W900,
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: const SharingEarnBody(),
    );
  }
}
