import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/features/subscribe_package/presentation/widgets/payment_gatemway_view_body.dart';

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
              color: Colors.white,
            ),
          ),
        ],
        elevation: 0,
        title: Text(
          "بوابه الدفع",
          style: AppStyles.style20W800,
        ),
      ),
      body: const PaymentGatewayViewBody(),
    );
  }
}
