import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shopping_chart/features/instagram/presentation/widgets/custom_pick_media_dialog.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import '../../../auth/presentation/widgets/auth_btn.dart';
import '../../../auth/presentation/widgets/auth_text_field.dart';

class SendYourXAdToFollowrsViewBody extends StatefulWidget {
  const SendYourXAdToFollowrsViewBody({super.key});

  @override
  State<SendYourXAdToFollowrsViewBody> createState() =>
      _SendYourXAdToFollowrsViewBodyState();
}

class _SendYourXAdToFollowrsViewBodyState
    extends State<SendYourXAdToFollowrsViewBody> {
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
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: AppColors.navBarColor,
          padding: EdgeInsetsDirectional.only(bottom: 10.h, start: 20.w),
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
                    "أرسل إعلانك على المتابعين  والمتابعون .",
                    style: AppStyles.style16W400.copyWith(
                      fontSize: 17.sp,
                    ),
                  ),
                  SizedBox(height: 35.h),
                  Text(
                    "أرفق صوره أو مقطع فيديو",
                    style: AppStyles.style16W600.copyWith(
                      color: Colors.white,
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
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Center(
                        child: _mediaFile != null
                            ? _mediaFile!.path.endsWith('.mp4')
                                ? SvgPicture.asset(
                                    Assets.imagesUploadIcon,
                                  )
                                : Image.file(
                                    _mediaFile!,
                                    fit: BoxFit.cover,
                                  )
                            : SvgPicture.asset(
                                Assets.imagesUploadIcon,
                              ),
                      ),
                    ),
                  ),
                  SizedBox(height: 34.h),
                  CustomAuthTextField(
                    onChanged: (value) {},
                    hintText: "اكتب تعليقاً.....",
                    fiiledColor: Colors.white.withOpacity(0.10),
                    hintStyle: AppStyles.style16W600.copyWith(
                      color: const Color(0xffB0B0B0),
                    ),
                  ),
                  SizedBox(height: 21.h),
                  CustomAuthTextField(
                    onChanged: (value) {},
                    fiiledColor: AppColors.whiteColor.withOpacity(0.10),
                    hintText: "اضف الرابط",
                    hintStyle: AppStyles.style12W700.copyWith(
                      color: const Color(0xff9C9C9C),
                    ),
                    suffixIcon: InkWell(
                      onTap: () {},
                      child: Transform.scale(
                        scale: 0.5,
                        child: SvgPicture.asset(
                          Assets.imagesPastLink,
                          colorFilter: const ColorFilter.mode(
                            Colors.tealAccent,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 21.h),
                  CustomAuthTextField(
                    fiiledColor: AppColors.whiteColor.withOpacity(0.10),
                    hintText: "أضف الموقع",
                    hintStyle: AppStyles.style12W700.copyWith(
                      color: const Color(0xff9C9C9C),
                    ),
                    suffixIcon: InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.location_on_outlined,
                        color: Colors.tealAccent,
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                  SizedBox(height: 35.h),
                  Center(
                    child: SizedBox(
                      height: 40.h,
                      width: 200.w,
                      child: CustomAuthBtn(
                        onPressed: () {
                          context.push("/addTrendsView");
                        },
                        text: "#   إضافة ترند",
                      ),
                    ),
                  ),
                  SizedBox(height: 21.h),
                  Center(
                    child: InkWell(
                      onTap: () {
                        context.push("/chooseXAdDestinationView");
                      },
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
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "أختر الوجهه",
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
