import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../whatsapp/presentation/widgets/launch_chats_view_body.dart';

class TelegramChatsView extends StatelessWidget {
  const TelegramChatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "TelegramChats".tr(context: context),
          style: AppStyles.style23W700.copyWith(
            fontSize: 21.sp,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(
              Icons.arrow_forward_ios_sharp,
              // color: Colors.white,
            ),
          ),
        ],
      ),
      body: const LaunchAdChatsViewBody(),
    );
  }
}
