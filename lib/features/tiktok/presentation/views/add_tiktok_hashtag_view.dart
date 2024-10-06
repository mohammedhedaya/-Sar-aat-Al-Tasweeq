import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/features/tiktok/presentation/widgets/add_tiktok_hashtag_view_body.dart';
import '../../../../core/utils/app_text_style.dart';

class AddTiktokHashtagView extends StatelessWidget {
  const AddTiktokHashtagView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          "# Add hashtags".tr(context: context),
          style: AppStyles.style17W800.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
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
      body: const AddTiktokHashtagViewBody(),
    );
  }
}
