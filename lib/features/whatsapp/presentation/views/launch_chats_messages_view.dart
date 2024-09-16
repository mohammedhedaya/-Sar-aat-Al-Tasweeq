import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/core/utils/assets.dart';
import 'package:shopping_chart/features/whatsapp/presentation/widgets/launch_chats_messages_view.dart';

class LaunchChatsMessagesView extends StatelessWidget {
  const LaunchChatsMessagesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.navBarColor,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8.w),
              child: CircleAvatar(
                radius: 20.r,
                backgroundImage: const AssetImage(
                  Assets.imagesImagePersonInAppBar,
                ),
              ),
            ),
            Expanded(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'ياهلا,',
                      style: AppStyles.style12W700,
                    ),
                    TextSpan(
                      text: 'فيصل',
                      style: AppStyles.style12W100,
                    ),
                  ],
                ),
                overflow: TextOverflow.ellipsis,
              ),
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
      body: const LaunchChatsMessagesViewBody(),
    );
  }
}
