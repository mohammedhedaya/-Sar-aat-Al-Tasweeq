import 'dart:io';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import '../../../auth/presentation/widgets/auth_btn.dart';
import '../../../auth/presentation/widgets/auth_text_field.dart';
import '../../../instagram/presentation/widgets/custom_pick_media_dialog.dart';

class ChoosePersonAndSendXAdViewBody extends StatefulWidget {
  const ChoosePersonAndSendXAdViewBody({super.key});

  @override
  State<ChoosePersonAndSendXAdViewBody> createState() =>
      _ChoosePersonAndSendXAdViewBodyState();
}

class _ChoosePersonAndSendXAdViewBodyState
    extends State<ChoosePersonAndSendXAdViewBody> {
  File? _mediaFile;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickMedia() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _mediaFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: isDark ? AppColors.navBarColor : AppColors.blueLight,
          padding: EdgeInsetsDirectional.only(start: 15.w, bottom: 10.h),
          child: Row(
            children: [
              SvgPicture.asset(
                Assets.imagesWallet,
              ),
              SizedBox(width: 10.w),
              Text(
                "400",
                style: AppStyles.style12W700.copyWith(
                  fontWeight: FontWeight.w900,
                  fontFamily: "Titillium Web",
                ),
              ),
              SizedBox(width: 10.w),
              SvgPicture.asset(
                Assets.imagesJewel,
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(33.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ChooseapersonfromXandsendyouradtoallhisfollowers"
                        .tr(context: context),
                    style: AppStyles.style16W400.copyWith(
                      fontSize: 17.sp,
                    ),
                  ),
                  SizedBox(height: 35.h),
                  Text(
                    "Attach a photo or video".tr(context: context),
                    style: AppStyles.style16W600.copyWith(
                      color: isDark ? Colors.white : Colors.black,
                    ),
                  ),
                  SizedBox(height: 17.h),
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        barrierColor: const Color(0xfffff9f9).withOpacity(0.33),
                        builder: (context) {
                          return CustomPickMediaDialog(
                            onTapSocialMedia: () {},
                            onTapLocalMedia: () {
                              _pickMedia();
                              context.pop();
                            },
                            socailMediaImage: Assets.imagesXIcon,
                            socailMediaText: "X",
                          );
                        },
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 268.h,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.10),
                        border: Border.all(
                          color: isDark
                              ? Colors.white.withOpacity(0.10)
                              : AppColors.blueLight,
                        ),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Center(
                        child: _mediaFile != null
                            ? _mediaFile!.path.endsWith('.mp4')
                                ? SvgPicture.asset(
                                    Assets.imagesUploadIcon,
                                    colorFilter: ColorFilter.mode(
                                      isDark
                                          ? Colors.white
                                          : AppColors.blueLight,
                                      BlendMode.srcIn,
                                    ),
                                  )
                                : Image.file(
                                    _mediaFile!,
                                    fit: BoxFit.cover,
                                  )
                            : SvgPicture.asset(
                                Assets.imagesUploadIcon,
                                colorFilter: ColorFilter.mode(
                                  isDark ? Colors.white : AppColors.blueLight,
                                  BlendMode.srcIn,
                                ),
                              ),
                      ),
                    ),
                  ),
                  SizedBox(height: 34.h),
                  CustomAuthTextField(
                    onChanged: (value) {},
                    hintText: "Writeacomment".tr(context: context),
                    fiiledColor: Colors.white.withOpacity(0.10),
                    hintStyle: AppStyles.style16W600.copyWith(
                      color: const Color(0xffB0B0B0),
                    ),
                    maxLines: 3,
                  ),
                  SizedBox(height: 21.h),
                  CustomAuthTextField(
                    onChanged: (value) {},
                    fiiledColor: AppColors.whiteColor.withOpacity(0.10),
                    hintText: "addLink".tr(context: context),
                    hintStyle: AppStyles.style12W700.copyWith(
                      color: isDark
                          ? const Color(0xffffffff)
                          : const Color(0xff000000),
                    ),
                    suffixIcon: Transform.scale(
                      scale: 0.5,
                      child: SvgPicture.asset(
                        Assets.imagesLinkTeal,
                      ),
                    ),
                  ),
                  SizedBox(height: 21.h),
                  CustomAuthTextField(
                    fiiledColor: AppColors.whiteColor.withOpacity(0.10),
                    hintText: "addLocation".tr(context: context),
                    hintStyle: AppStyles.style12W700.copyWith(
                      color: isDark
                          ? const Color(0xffffffff)
                          : const Color(0xff000000),
                    ),
                    suffixIcon: Transform.scale(
                      scale: 0.5,
                      child: SvgPicture.asset(
                        Assets.imagesLocationTeal,
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                  SizedBox(height: 35.h),
                  Center(
                    child: CustomAuthBtn(
                      onPressed: () {
                        context.push("/searchPersonToSendXAdView");
                      },
                      text: "ChooseapersonfromXandsendyouradtoallhisfollowers"
                          .tr(context: context),
                    ),
                  ),
                  SizedBox(height: 21.h),
                  Center(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 40.h,
                        width: 200.w,
                        padding: EdgeInsets.symmetric(
                            horizontal: 22.w, vertical: 4.h),
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
                              color: AppColors.whiteColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
