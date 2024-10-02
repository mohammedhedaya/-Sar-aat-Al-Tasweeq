import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import '../widgets/sms_transfer_another_number_view_body.dart';

class SMSTransferAnotherNumberView extends StatelessWidget {
  const SMSTransferAnotherNumberView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(
              Icons.arrow_forward_ios_outlined,
            ),
          ),
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                "launchaddwithease".tr(context: context),
                style: AppStyles.style17W800.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SvgPicture.asset(
              Assets.imagesRocket,
            ),
          ],
        ),
        leading: IconButton(
          onPressed: () {
            context.pop();
            context.pop();
            context.pop();
          },
          icon: const Icon(
            Icons.logout_sharp,
            color: Colors.white,
          ),
        ),
      ),
      body: const SMSTransferAnotherNumberViewBody(),
    );
  }
}
