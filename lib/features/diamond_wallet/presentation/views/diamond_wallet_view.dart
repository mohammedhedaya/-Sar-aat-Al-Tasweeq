import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/features/diamond_wallet/presentation/widgets/view_body_of_diamond_wallet.dart';

class DiamondWalletView extends StatelessWidget {
  final VoidCallback? onBackToHome;

  const DiamondWalletView({super.key, this.onBackToHome});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {
              if (context.canPop()) {
                context.pop();
              } else if (onBackToHome != null) {
                onBackToHome!();
              }
            },
            icon: const Icon(
              Icons.arrow_forward_ios_outlined,
            ),
          ),
        ],
        elevation: 0,
      ),
      body: const ViewBodyOfDiamondWallet(),
    );
  }
}
