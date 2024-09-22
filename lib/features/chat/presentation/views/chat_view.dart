import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../widgets/chat_view_body.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.navBarColor,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'المحادثة الفورية',
          style: AppStyles.style20W800.copyWith(
            shadows: [
              Shadow(
                color: Colors.white.withOpacity(0.78),
                blurRadius: 10.6,
                offset: const Offset(0, 4),
              ),
            ],
          ),
        ),
        leading: InkWell(
          onTap: () {},
          child: Container(
            constraints: BoxConstraints(
              minHeight: 40.h,
              minWidth: 40.w,
            ),
            margin: EdgeInsets.all(10.w),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.whiteColor,
            ),
            child: const Icon(
              Icons.more_horiz_rounded,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              context.pop();
            },
            child: Container(
              constraints: BoxConstraints(
                minHeight: 40.h,
                minWidth: 40.w,
              ),
              margin: EdgeInsets.all(10.w),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.whiteColor,
              ),
              child: const Icon(
                Icons.arrow_forward,
              ),
            ),
          ),
        ],
      ),
      body: const ChatViewBody(),
    );
  }
}
