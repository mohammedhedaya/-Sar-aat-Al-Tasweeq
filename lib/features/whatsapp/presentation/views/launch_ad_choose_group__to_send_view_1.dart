import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/launch_ad_choosegroup__to_send_view_body1.dart';

class LaunchAdChooseGroupToSendView1 extends StatelessWidget {
  const LaunchAdChooseGroupToSendView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(
              Icons.arrow_forward_ios_sharp,
            ),
          ),
        ],
      ),
      body: const LaunchAdChooseGroupToSendViewBody1(),
    );
  }
}
