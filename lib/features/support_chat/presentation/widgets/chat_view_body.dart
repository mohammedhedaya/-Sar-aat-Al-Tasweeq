import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class ChatViewBody extends StatelessWidget {
  const ChatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.imagesHomeBackground),
          opacity: 0.26,
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                SizedBox(height: 25.h),
                BubbleSpecialThree(
                  text:
                      'وريم إيبسوم هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى)',
                  color: isDark ? const Color(0xFF7B7B7B) : AppColors.blueLight,
                  tail: true,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 25.h),
                BubbleSpecialThree(
                  text:
                      'وريم إيبسوم هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى)',
                  color:
                      isDark ? const Color(0xffFFFEFE) : AppColors.whiteColor,
                  tail: true,
                  isSender: false,
                  textStyle: TextStyle(
                    color: isDark ? Colors.black : Colors.black,
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 25.h),
                BubbleSpecialThree(
                  text:
                      'وريم إيبسوم هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى)',
                  color: isDark ? const Color(0xFF7B7B7B) : AppColors.blueLight,
                  tail: true,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 25.h),
                BubbleSpecialThree(
                  text:
                      'وريم إيبسوم هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى)',
                  color:
                      isDark ? const Color(0xffFFFEFE) : AppColors.whiteColor,
                  tail: true,
                  isSender: false,
                  textStyle: TextStyle(
                    color: isDark ? Colors.black : Colors.black,
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 25.h),
                BubbleSpecialThree(
                  text:
                      'وريم إيبسوم هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى)',
                  color: isDark ? const Color(0xFF7B7B7B) : AppColors.blueLight,
                  tail: true,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 25.h),
                BubbleSpecialThree(
                  text:
                      'وريم إيبسوم هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى)',
                  color:
                      isDark ? const Color(0xffFFFEFE) : AppColors.whiteColor,
                  tail: true,
                  isSender: false,
                  textStyle: TextStyle(
                    color: isDark ? Colors.black : Colors.black,
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 25.h),
                BubbleSpecialThree(
                  text:
                      'وريم إيبسوم هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى)',
                  color: isDark ? const Color(0xFF7B7B7B) : AppColors.blueLight,
                  tail: true,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 25.h),
                BubbleSpecialThree(
                  text:
                      'وريم إيبسوم هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى)',
                  color:
                      isDark ? const Color(0xffFFFEFE) : AppColors.whiteColor,
                  tail: true,
                  isSender: false,
                  textStyle: TextStyle(
                    color: isDark ? Colors.black : Colors.black,
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 25.h),
                BubbleSpecialThree(
                  text:
                      'وريم إيبسوم هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى)',
                  color: isDark ? const Color(0xFF7B7B7B) : AppColors.blueLight,
                  tail: true,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 25.h),
                BubbleSpecialThree(
                  text:
                      'وريم إيبسوم هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى)',
                  color:
                      isDark ? const Color(0xffFFFEFE) : AppColors.whiteColor,
                  tail: true,
                  isSender: false,
                  textStyle: TextStyle(
                    color: isDark ? Colors.black : Colors.black,
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 25.h),
                BubbleSpecialThree(
                  text:
                      'وريم إيبسوم هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى)',
                  color: isDark ? const Color(0xFF7B7B7B) : AppColors.blueLight,
                  tail: true,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 25.h),
                BubbleSpecialThree(
                  text:
                      'وريم إيبسوم هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى)',
                  color:
                      isDark ? const Color(0xffFFFEFE) : AppColors.whiteColor,
                  tail: true,
                  isSender: false,
                  textStyle: TextStyle(
                    color: isDark ? Colors.black : Colors.black,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: isDark ? AppColors.navBarColor : AppColors.blueLight,
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 11.w),
            child: Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Transform.rotate(
                    angle: 3.14,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.w),
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        color: isDark
                            ? AppColors.mixWhiteAndGray
                            : AppColors.whiteColor,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.send,
                          color: isDark
                              ? AppColors.navBarColor
                              : AppColors.yellowLight,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: isDark
                          ? AppColors.mixWhiteAndGray
                          : AppColors.whiteColor,
                      filled: true,
                      hintText: 'اكتب رسالتك',
                      hintStyle: AppStyles.style12W400.copyWith(
                        color: const Color(0xff252525),
                        fontSize: 14.sp,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                    ),
                    onSubmitted: (value) {},
                    onChanged: (value) {},
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.start,
                    style: AppStyles.style12W400.copyWith(
                      color: const Color(0xff252525),
                      fontSize: 14.sp,
                    ),
                    cursorColor: AppColors.navBarColor,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.add,
                    color:
                        isDark ? AppColors.whiteColor : AppColors.yellowLight,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
