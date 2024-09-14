import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/view_body_of_diamond_wallet.dart';

class DiamondWalletView extends StatelessWidget {
  const DiamondWalletView({super.key});

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
              context.pop();
            },
            icon: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.white,
            ),
          ),
        ],
        elevation: 0,
      ),
      body: const ViewBodyOfDiamondWallet(),
    );
  }
}
