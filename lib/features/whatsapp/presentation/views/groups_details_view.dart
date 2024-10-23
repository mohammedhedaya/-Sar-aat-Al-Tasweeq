import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/core/utils/assets.dart';
import '../widgets/whatsapp_groups_details_view_body.dart';

class WhatsappGroupsDetailsView extends StatelessWidget {
  const WhatsappGroupsDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                "Expandyoursalesrange".tr(context: context),
                style: AppStyles.style20W800.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
            SvgPicture.asset(
              Assets.imagesRocket,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: const GroupsDetailsViewBody(),
    );
  }
}
