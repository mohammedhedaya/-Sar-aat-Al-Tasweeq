import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/core/utils/assets.dart';
import 'package:shopping_chart/features/auth/presentation/widgets/auth_text_field.dart';
import 'package:shopping_chart/features/whatsapp/presentation/widgets/custom_launch_menu_brn.dart';

class WhatsappPageView extends StatelessWidget {
  const WhatsappPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          LaunchAdTextField(
            hintText: 'أكتب رسالتك...',
            onSuffixIconTap: () {},
          ),
          SizedBox(height: 72.h),
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
          SizedBox(height: 19.h),
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
          SizedBox(height: 25.h),
          Center(
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 40.h,
                width: 200.w,
                padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 4.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  // color: Colors.teal,
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
                    "إختار الوجهة",
                    style: AppStyles.style14W400,
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

class LaunchAdTextField extends StatefulWidget {
  final String hintText;
  final VoidCallback onSuffixIconTap;

  const LaunchAdTextField({
    super.key,
    required this.hintText,
    required this.onSuffixIconTap,
  });

  @override
  State<LaunchAdTextField> createState() => _LaunchAdTextFieldState();
}

class _LaunchAdTextFieldState extends State<LaunchAdTextField> {
  bool _isExpanded = false;

  void _toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextField(
          cursorColor: Colors.teal,
          maxLines: 10,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: AppStyles.style12W700.copyWith(
              color: const Color(0xff9C9C9C),
            ),
            filled: true,
            fillColor: Colors.white.withOpacity(0.10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20.r),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20.r),
            ),
          ),
          style: const TextStyle(color: Colors.white),
        ),
        Positioned(
          bottom: 20.h,
          left: 10.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (_isExpanded) ...[
                CustomLaunchMenuBtn(
                  onTap: () {},
                  icon: Assets.imagesMenuCamera,
                ),
                SizedBox(height: 8.h),
                CustomLaunchMenuBtn(
                  onTap: () {},
                  icon: Assets.imagesMenuFile,
                ),
                SizedBox(height: 8.h),
                CustomLaunchMenuBtn(
                  onTap: () {},
                  icon: Assets.imagesMenuImage,
                ),
                SizedBox(height: 8.h),
              ],
              GestureDetector(
                onTap: _toggleExpand,
                child: CircleAvatar(
                  radius: 15.r,
                  backgroundColor:
                      _isExpanded ? const Color(0xffCC0000) : Colors.teal,
                  child: Icon(
                    _isExpanded ? Icons.close : Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        if (_isExpanded)
          Positioned(
            bottom: 20.h,
            right: 10.w,
            child: GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                radius: 15.r,
                backgroundColor: const Color(0xffB6B6B6),
                child: const Icon(
                  Icons.mic,
                  color: Colors.white,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
