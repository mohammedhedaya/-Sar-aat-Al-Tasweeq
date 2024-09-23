import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_text_style.dart';
import '../widgets/add_hashtags_view_body.dart';

class AddHashtagsView extends StatelessWidget {
  const AddHashtagsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          " # إضافة الهاشتجات",
          style: AppStyles.style17W800.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.white.withOpacity(0.8),
            ),
          ),
        ],
      ),
      body: const AddHashtagsViewBody(),
    );
  }
}
