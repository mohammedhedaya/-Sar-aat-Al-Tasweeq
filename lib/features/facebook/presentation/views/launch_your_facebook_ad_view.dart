import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../widgets/launch_face_ad_drawer.dart';
import '../widgets/launch_your_facebook_ad_view_body.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class LaunchYourFacebookAdView extends StatefulWidget {
  const LaunchYourFacebookAdView({super.key});

  @override
  State<LaunchYourFacebookAdView> createState() =>
      _LaunchYourFacebookAdViewState();
}

class _LaunchYourFacebookAdViewState extends State<LaunchYourFacebookAdView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const CustomLaunchFacebookAdDrawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.r)),
          gradient: const LinearGradient(
            colors: [
              Color(0xFF006066),
              Color(0xFF00C0CC),
            ],
            begin: Alignment.center,
            end: Alignment.center,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              spreadRadius: 4,
              blurRadius: 4,
              offset: const Offset(-4, 8),
            ),
          ],
        ),
        child: FloatingActionButton(
          backgroundColor: Colors.transparent,
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: AppColors.navBarColor,
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            context.pop();
            context.pop();
            context.pop();
          },
          icon: const Icon(
            Icons.logout,
            color: Colors.white,
          ),
        ),
        title: Row(
          children: [
            Text(
              'أطلق إعلانك بكل سهولة',
              style: AppStyles.style17W800.copyWith(
                fontWeight: FontWeight.w700,
              ),
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
      body: const LaunchYourFacebookAdViewBody(),
    );
  }
}
