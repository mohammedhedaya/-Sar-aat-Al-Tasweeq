import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_style.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../auth/presentation/widgets/auth_text_field.dart';
import '../../widgets/launch_text_field.dart';

class PhoneDirectoryPageView extends StatefulWidget {
  const PhoneDirectoryPageView({super.key});

  @override
  State<PhoneDirectoryPageView> createState() => _PhoneDirectoryPageViewState();
}

class _PhoneDirectoryPageViewState extends State<PhoneDirectoryPageView> {
  final TextEditingController groupLinkController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;

    return SingleChildScrollView(
      child: Column(
        children: [
          LaunchAdTextField(
            onChanged: (value) {},
            hintText: "writeyourmessage".tr(context: context),
            onSuffixIconTap: () {},
          ),
          SizedBox(height: 72.h),
          CustomAuthTextField(
            controller: groupLinkController,
            fiiledColor: AppColors.whiteColor.withOpacity(0.10),
            hintText: "addLink".tr(context: context),
            hintStyle: AppStyles.style12W700.copyWith(
              color: isDark ? const Color(0xffffffff) : const Color(0xff000000),
            ),
            suffixIcon: InkWell(
              onTap: () async {
                final data = await Clipboard.getData(Clipboard.kTextPlain);
                if (data != null && data.text != null) {
                  groupLinkController.text = data.text!;
                }
              },
              child: Transform.scale(
                scale: 0.5,
                child: SvgPicture.asset(
                  Assets.imagesLinkTeal,
                ),
              ),
            ),
            onChanged: (value) {},
          ),
          SizedBox(height: 19.h),
          CustomAuthTextField(
            fiiledColor: AppColors.whiteColor.withOpacity(0.10),
            hintText: "addLocation".tr(context: context),
            hintStyle: AppStyles.style12W700.copyWith(
              color: isDark ? const Color(0xffffffff) : const Color(0xff000000),
            ),
            suffixIcon: InkWell(
              onTap: () {},
              child: Transform.scale(
                scale: 0.5,
                child: SvgPicture.asset(
                  Assets.imagesLocationTeal,
                ),
              ),
            ),
            onChanged: (value) {},
          ),
          SizedBox(height: 80.h),
          Center(
            child: InkWell(
              onTap: () {
                context.push('/whatsappChooseTheDestinationView');
              },
              child: Container(
                height: 40.h,
                width: 200.w,
                padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 4.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xff00C0CC),
                      Color(0xff006066),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Center(
                  child: Text(
                    "chooseDestination".tr(context: context),
                    style: AppStyles.style14W400.copyWith(
                      color: isDark
                          ? const Color(0xff000000)
                          : const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
