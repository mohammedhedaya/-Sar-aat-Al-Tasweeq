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

class LaunchYourInstaAdViewBody extends StatefulWidget {
  const LaunchYourInstaAdViewBody({super.key});

  @override
  State<LaunchYourInstaAdViewBody> createState() =>
      _LaunchYourInstaAdViewBodyState();
}

class _LaunchYourInstaAdViewBodyState extends State<LaunchYourInstaAdViewBody> {
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
                "instagram".tr(context: context),
                style: AppStyles.style20W800,
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
                  color: Colors.white.withOpacity(0.10),
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
                                isDark ? Colors.white : AppColors.blueLight,
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
              fiiledColor: AppColors.whiteColor.withOpacity(0.10),
              hintText: "addLink".tr(context: context),
              hintStyle: AppStyles.style12W700.copyWith(
                color:
                    isDark ? const Color(0xffffffff) : const Color(0xff000000),
              ),
              suffixIcon: Transform.scale(
                scale: 0.5,
                child: SvgPicture.asset(
                  Assets.imagesLinkTeal,
                ),
              ),
              onChanged: (value) {},
            ),
            SizedBox(height: 21.h),
            CustomAuthTextField(
              fiiledColor: AppColors.whiteColor.withOpacity(0.10),
              hintText: "addLocation".tr(context: context),
              hintStyle: AppStyles.style12W700.copyWith(
                color:
                    isDark ? const Color(0xffffffff) : const Color(0xff000000),
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
            SizedBox(
              height: 40.h,
              width: 200.w,
              child: CustomAuthBtn(
                onPressed: () {
                  context.push("/addHashtagsView");
                  // addInstagramTrendsModalSheet(context);
                },
                text: "# Add hashtags".tr(context: context),
              ),
            ),
            SizedBox(height: 21.h),
            Center(
              child: InkWell(
                onTap: () {
                  context.push("/instagramSendingView");
                },
                child: Container(
                  height: 40.h,
                  width: 200.w,
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    color: isDark ? null : Colors.orange,
                    gradient: isDark
                        ? const LinearGradient(
                            colors: [
                              Color(0xff00C0CC),
                              Color(0xff006066),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          )
                        : null,
                  ),
                  child: Center(
                    child: Text(
                      "send".tr(context: context),
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

  Future<dynamic> addInstagramTrendsModalSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      enableDrag: true,
      isScrollControlled: true,
      barrierColor: AppColors.blackColor.withOpacity(0.71),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50.r),
          topRight: Radius.circular(50.r),
        ),
      ),
      backgroundColor: const Color(0xffDDDDDD),
      builder: (builder) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: Column(
            children: [
              SizedBox(height: 80.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 30.h,
                          right: 30.h,
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              onTap: () {
                                context.push("/addHashtagsView");
                              },
                              contentPadding: EdgeInsets.zero,
                              visualDensity: VisualDensity.compact,
                              title: Text(
                                "Publishyourinstagramadon5trends"
                                    .tr(context: context),
                                style: AppStyles.style18W700.copyWith(
                                  color: Colors.black,
                                ),
                              ),
                              trailing: Container(
                                decoration: const BoxDecoration(
                                  color: Color(0xff3C3636),
                                  shape: BoxShape.circle,
                                ),
                                child: context.locale == const Locale('en')
                                    ? const Icon(
                                        Icons.keyboard_arrow_right_sharp,
                                        color: Colors.white,
                                      )
                                    : const Icon(
                                        Icons.keyboard_arrow_left_sharp,
                                        color: Colors.white,
                                      ),
                              ),
                            ),
                            const Divider(
                              color: Colors.black,
                              thickness: 1,
                            ),
                            ListTile(
                              onTap: () {
                                context.push("/addHashtagsView");
                              },
                              contentPadding: EdgeInsets.zero,
                              visualDensity: VisualDensity.compact,
                              title: Text(
                                "Publishyourinstagramadon10trends"
                                    .tr(context: context),
                                style: AppStyles.style18W700.copyWith(
                                  color: Colors.black,
                                ),
                              ),
                              trailing: Container(
                                decoration: const BoxDecoration(
                                  color: Color(0xff3C3636),
                                  shape: BoxShape.circle,
                                ),
                                child: context.locale == const Locale('en')
                                    ? const Icon(
                                        Icons.keyboard_arrow_right_sharp,
                                        color: Colors.white,
                                      )
                                    : const Icon(
                                        Icons.keyboard_arrow_left_sharp,
                                        color: Colors.white,
                                      ),
                              ),
                            ),
                            const Divider(
                              color: Colors.black,
                              thickness: 1,
                            ),
                            ListTile(
                              onTap: () {
                                context.push("/addHashtagsView");
                              },
                              contentPadding: EdgeInsets.zero,
                              visualDensity: VisualDensity.compact,
                              title: Text(
                                "Publishyourinstagramadon15trends"
                                    .tr(context: context),
                                style: AppStyles.style18W700.copyWith(
                                  color: Colors.black,
                                ),
                              ),
                              trailing: Container(
                                decoration: const BoxDecoration(
                                  color: Color(0xff3C3636),
                                  shape: BoxShape.circle,
                                ),
                                child: context.locale == const Locale('en')
                                    ? const Icon(
                                        Icons.keyboard_arrow_right_sharp,
                                        color: Colors.white,
                                      )
                                    : const Icon(
                                        Icons.keyboard_arrow_left_sharp,
                                        color: Colors.white,
                                      ),
                              ),
                            ),
                            const Divider(
                              color: Colors.black,
                              thickness: 1,
                            ),
                            ListTile(
                              onTap: () {
                                context.push("/addHashtagsView");
                              },
                              contentPadding: EdgeInsets.zero,
                              visualDensity: VisualDensity.compact,
                              title: Text(
                                "Publishyourinstagramadon20trends"
                                    .tr(context: context),
                                style: AppStyles.style18W700.copyWith(
                                  color: Colors.black,
                                ),
                              ),
                              trailing: Container(
                                decoration: const BoxDecoration(
                                  color: Color(0xff3C3636),
                                  shape: BoxShape.circle,
                                ),
                                child: context.locale == const Locale('en')
                                    ? const Icon(
                                        Icons.keyboard_arrow_right_sharp,
                                        color: Colors.white,
                                      )
                                    : const Icon(
                                        Icons.keyboard_arrow_left_sharp,
                                        color: Colors.white,
                                      ),
                              ),
                            ),
                            const Divider(
                              color: Colors.black,
                              thickness: 1,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
