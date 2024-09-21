import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class CustomShowDialog extends StatelessWidget {
  const CustomShowDialog({
    super.key,
    this.content,
    required this.image,
    required this.textButton,
    this.onTap,
  });

  final String image;
  final String textButton;
  final Widget? content;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.r),
      ),
      backgroundColor: AppColors.darkGray,
      title: SvgPicture.asset(
        image,
      ),
      content: content,
      actions: [
        InkWell(
          onTap: onTap,
          child: Center(
            child: Container(
              height: 31.h,
              width: 119.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xff00C0CC),
                    Color(0xff006066),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  // begin: Alignment.centerLeft,
                  // end: Alignment.centerRight,
                ),
              ),
              child: Center(
                child: Text(
                  textButton,
                  style: AppStyles.style14W700,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
