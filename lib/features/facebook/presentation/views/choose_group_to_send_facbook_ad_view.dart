import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

import '../widgets/choose_group_to_send_facbook_ad_view_body.dart';

class ChooseGroupToSendFacbookAdView extends StatelessWidget {
  const ChooseGroupToSendFacbookAdView({super.key});

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
            Text(
              "إبداء فى تسويق مشروعك !",
              style: AppStyles.style16W400.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(width: 10.w),
            SvgPicture.asset(
              Assets.imagesStartMarktingYourProject,
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
      body: const ChooseGroupToSendFacbookAdViewBody(),
    );
  }
}
