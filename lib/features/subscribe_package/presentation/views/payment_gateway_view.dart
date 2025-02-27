import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_text_style.dart';
import '../widgets/payment_gatemway_view_body.dart';

class PaymentGatewayView extends StatelessWidget {
  const PaymentGatewayView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
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
        elevation: 0,
        title: Text(
          "payment_gateway".tr(context: context),
          style: AppStyles.style20W800,
        ),
      ),
      body: const PaymentGatewayViewBody(),
    );
  }
}
