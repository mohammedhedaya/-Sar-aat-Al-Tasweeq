import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import '../widgets/launch_your_ad_drawer.dart';
import '../widgets/launch_your_ad_view_body.dart';

class LaunchYourWhatsappAdView extends StatefulWidget {
  const LaunchYourWhatsappAdView({super.key});

  @override
  State<LaunchYourWhatsappAdView> createState() =>
      _LaunchYourWhatsappAdViewState();
}

class _LaunchYourWhatsappAdViewState extends State<LaunchYourWhatsappAdView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return Scaffold(
      key: _scaffoldKey,
      drawer: const LaunchYourAdWhatsappDrawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: Container(
        decoration: BoxDecoration(
          color: isDark ? null : AppColors.blueLight,
          borderRadius: BorderRadius.all(Radius.circular(15.r)),
          gradient: isDark
              ? const LinearGradient(
                  colors: [
                    Color(0xFF006066),
                    Color(0xFF00C0CC),
                  ],
                  begin: Alignment.center,
                  end: Alignment.center,
                )
              : null,
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                "launchaddwithease".tr(context: context),
                style: AppStyles.style20W800.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
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
            ),
          ),
        ],
      ),
      body: const LaunchYourWhatsappAdViewBody(),
    );
  }
}
