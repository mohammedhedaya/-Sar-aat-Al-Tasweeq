import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import '../widgets/sms_launch_your_ad_phone_directory_view_body.dart';

class SMSLaunchYourAdPhoneDirectoryView extends StatelessWidget {
  const SMSLaunchYourAdPhoneDirectoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                'أطلق إعلانك بكل سهولة',
                style: AppStyles.style17W800.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SvgPicture.asset(
              Assets.imagesRocket,
            ),
          ],
        ),
        leading: IconButton(
          onPressed: () {
            context.pop();
            context.pop();
            context.pop();
          },
          icon: const Icon(
            Icons.logout_sharp,
            color: Colors.white,
          ),
        ),
      ),
      body: const SMSLaunchYourAdPhoneDirectoryViewBody(),
    );
  }
}
