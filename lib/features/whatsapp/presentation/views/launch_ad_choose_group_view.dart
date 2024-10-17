import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import '../widgets/launch_ad_choose_group_view_body.dart.dart';

class LaunchAdChooseGroupView extends StatelessWidget {
  const LaunchAdChooseGroupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Text(
              "Startmarketingyourproject!".tr(context: context),
              style: AppStyles.style16W400.copyWith(
                fontWeight: FontWeight.w700,
                color: Colors.white,
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
      body: const LaunchAdChooseGroupViewBody(),
    );
  }
}
