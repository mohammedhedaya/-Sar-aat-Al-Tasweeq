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

class LaunchYourTiktokAdViewBody extends StatefulWidget {
  const LaunchYourTiktokAdViewBody({super.key});

  @override
  State<LaunchYourTiktokAdViewBody> createState() =>
      _LaunchYourTiktokAdViewBodyState();
}

class _LaunchYourTiktokAdViewBodyState
    extends State<LaunchYourTiktokAdViewBody> {
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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                "TikTok".tr(context: context),
                style: AppStyles.style20W800.copyWith(
                  color: isDark ? Colors.white : Colors.black,
                ),
              ),
            ),
            SizedBox(height: 39.h),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                "Attach a photo or video".tr(context: context),
                style: AppStyles.style16W600.copyWith(
                  color: isDark ? Colors.white : Colors.black,
                ),
              ),
            ),
            SizedBox(height: 17.h),
            InkWell(
              onTap: _pickMedia,
              child: Container(
                width: double.infinity,
                height: 268.h,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: isDark
                      ? Colors.white.withOpacity(0.10)
                      : AppColors.fillLight,
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(
                    color: isDark ? Colors.transparent : AppColors.blueLight,
                  ),
                ),
                child: Center(
                  child: _mediaFile != null
                      ? _mediaFile!.path.endsWith('.mp4')
                          ? SvgPicture.asset(
                              Assets.imagesUploadIcon,
                              colorFilter: ColorFilter.mode(
                                isDark ? Colors.white : AppColors.yellowLight,
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
                            isDark ? Colors.white : AppColors.yellowLight,
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
              fiiledColor:
                  isDark ? Colors.white.withOpacity(0.10) : AppColors.fillLight,
              hintStyle: AppStyles.style16W600.copyWith(
                color: isDark ? const Color(0xffB0B0B0) : Colors.black54,
              ),
              maxLines: 3,
            ),
            SizedBox(height: 21.h),
            CustomAuthTextField(
              fiiledColor:
                  isDark ? Colors.white.withOpacity(0.10) : AppColors.fillLight,
              hintText: "addLink".tr(context: context),
              hintStyle: AppStyles.style12W700.copyWith(
                color:
                    isDark ? const Color(0xffffffff) : const Color(0xff000000),
              ),
              suffixIcon: Transform.scale(
                scale: 0.5,
                child: SvgPicture.asset(
                  isDark ? Assets.imagesLinkTeal : Assets.imagesLinkLight,
                ),
              ),
              onChanged: (value) {},
            ),
            SizedBox(height: 21.h),
            CustomAuthTextField(
              fiiledColor:
                  isDark ? Colors.white.withOpacity(0.10) : AppColors.fillLight,
              hintText: "addLocation".tr(context: context),
              hintStyle: AppStyles.style12W700.copyWith(
                color:
                    isDark ? const Color(0xffffffff) : const Color(0xff000000),
              ),
              suffixIcon: Transform.scale(
                scale: 0.5,
                child: SvgPicture.asset(
                  isDark
                      ? Assets.imagesLocationTeal
                      : Assets.imagesLocationLight,
                ),
              ),
              onChanged: (value) {},
            ),
            SizedBox(height: 35.h),
            SizedBox(
              height: 40.h,
              width: 200.w,
              child: CustomAuthBtn(
                onPressed: () {
                  context.push("/addTiktokHashtagView");
                },
                text: "# Add hashtags".tr(context: context),
              ),
            ),
            SizedBox(height: 21.h),
            Center(
              child: InkWell(
                onTap: () {
                  context.push("/tiktokSendingView");
                },
                child: Container(
                  height: 40.h,
                  width: 200.w,
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    gradient: isDark
                        ? const LinearGradient(
                            colors: [
                              Color(0xff00C0CC),
                              Color(0xff006066),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          )
                        : const LinearGradient(
                            colors: [
                              AppColors.linearLight1,
                              AppColors.linearLight2,
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                  ),
                  child: Center(
                    child: Text(
                      "chooseDestination".tr(context: context),
                      style: AppStyles.style14W400.copyWith(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
