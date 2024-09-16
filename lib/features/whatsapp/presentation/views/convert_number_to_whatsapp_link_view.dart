import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_text_style.dart';
import '../widgets/convert_number_to_whatsapp_link_view_body.dart';

class ConvertNumberToWhatsappLinkView extends StatelessWidget {
  const ConvertNumberToWhatsappLinkView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          "تحول الرقم إلى رابط الواتساب",
          style: AppStyles.style20W400,
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
      body: const ConvertNumberToWhatsappLinkViewBody(),
    );
  }
}
