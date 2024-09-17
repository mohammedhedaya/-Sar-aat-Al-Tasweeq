import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/core/utils/assets.dart';
import 'package:shopping_chart/features/auth/presentation/widgets/auth_btn.dart';
import 'package:shopping_chart/features/auth/presentation/widgets/auth_text_field.dart';

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
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        _mediaFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                "الأنستجرام",
                style: AppStyles.style20W800,
              ),
            ),
            SizedBox(height: 39.h),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                "أرفق صوره أو مقطع فيديو",
                style: AppStyles.style16W600.copyWith(
                  color: Colors.white,
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
              fiiledColor: AppColors.whiteColor.withOpacity(0.10),
              hintText: "أضف الرابط",
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
              onChanged: (value) {},
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
            SizedBox(
              height: 40.h,
              width: 200.w,
              child: CustomAuthBtn(
                onPressed: () {
                  context.push("/addHashtagsView");
                },
                text: "#   إضافة الهشتاجات",
              ),
            ),
            SizedBox(height: 21.h),
            Center(
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 40.h,
                  width: 200.w,
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.w, vertical: 4.h),
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
                      "إرسال",
                      style: AppStyles.style14W400,
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
