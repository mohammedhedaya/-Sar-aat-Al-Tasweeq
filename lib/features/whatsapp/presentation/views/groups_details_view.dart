import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/whatsapp_groups_details_view_body.dart';

class WhatsappGroupsDetailsView extends StatelessWidget {
  const WhatsappGroupsDetailsView({super.key});

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
      body: const GroupsDetailsViewBody(),
    );
  }
}
