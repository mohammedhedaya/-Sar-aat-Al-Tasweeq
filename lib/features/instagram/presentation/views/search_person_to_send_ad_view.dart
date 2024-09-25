import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import '../widgets/search_person_to_send_ad_view_body.dart';

class SearchPersonToSendAdView extends StatelessWidget {
  const SearchPersonToSendAdView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          children: [
            Text(
              "وسع نطاق البيع",
              style: AppStyles.style17W800.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(width: 9.w),
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
      body: const SearchPersonToSendAdViewBody(),
    );
  }
}
