import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/features/facebook/presentation/widgets/add_facebook_groups_view_body.dart';

class AddFacebookGroupsView extends StatelessWidget {
  const AddFacebookGroupsView({super.key});

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
              color: Colors.white54,
            ),
          ),
        ],
      ),
      body: const AddFacebookGroupsViewBody(),
    );
  }
}
