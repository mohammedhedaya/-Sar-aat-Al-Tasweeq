import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/core/utils/assets.dart';
import 'package:shopping_chart/features/whatsapp/presentation/widgets/launch_your_ad_drawer.dart';
import 'package:shopping_chart/features/whatsapp/presentation/widgets/launch_your_ad_view_body.dart';

class LaunchYourAdView extends StatefulWidget {
  const LaunchYourAdView({super.key});

  @override
  State<LaunchYourAdView> createState() => _LaunchYourAdViewState();
}

class _LaunchYourAdViewState extends State<LaunchYourAdView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const LaunchYourAdDrawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        backgroundColor: Colors.teal,
        onPressed: () {
          _scaffoldKey.currentState!.openDrawer();
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 40,
        ),
      ),
      appBar: AppBar(
        backgroundColor: AppColors.navBarColor,
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.logout,
            color: Colors.white,
          ),
        ),
        title: Row(
          children: [
            Text(
              'أطلق إعلانك بكل سهولة',
              style: AppStyles.style20W800,
            ),
            SizedBox(width: 9.w),
            SvgPicture.asset(
              Assets.imagesRocket,
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
      body: const LaunchYourAdViewBody(),
    );
  }
}
